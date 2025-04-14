import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:super_baraem_kidergarten/src/core/functions/functions.dart';
import 'package:super_baraem_kidergarten/src/core/models/error_model.dart';
import 'package:super_baraem_kidergarten/src/core/network/data_state.dart';
import 'package:super_baraem_kidergarten/src/core/sheet/alert_dialog.dart';
import 'package:super_baraem_kidergarten/src/core/views/update_app_page.dart';
import 'package:super_baraem_kidergarten/src/utils/extensions/extention.dart';
import 'package:super_baraem_kidergarten/src/utils/functions.dart';

class NetworkHandler<T> {
  static DataState<T> getDataFailed<T>(DioError dioError) {
    if (dioError.type == DioErrorType.other &&
        dioError.error is SocketException &&
        (dioError.error as SocketException).osError?.message ==
            "Network is unreachable") {
      return DataFailed<T>(InternetConnectionError());
    }

    if (dioError.type == DioErrorType.other &&
        dioError.error is SocketException &&
        (dioError.error as SocketException).osError?.message ==
            "Connection refused") {
      return DataFailed<T>(ServerError());
    }
    if (dioError.type == DioErrorType.other ||
        dioError.type == DioErrorType.connectTimeout ||
        dioError.type == DioErrorType.receiveTimeout ||
        dioError.type == DioErrorType.sendTimeout) {
      return DataFailed<T>(InternetConnectionError());
    }

    if (dioError.response?.statusCode == 444) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        goAndRemoveUntil(const UpdateAppPage());
      });
    }

    ErrorResponseModel? error;
    errorLog(dioError);
    if (dioError.response == null ||
        dioError.response!.data == null ||
        dioError.response!.statusCode! > 499) {
      error = ErrorResponseModel(
        reason: dioError.response?.data["message"] ?? "server_error",
        statusCode: dioError.response?.statusCode ?? 500,
      );
    } else {
      error = ErrorResponseModel.fromJson(dioError.response?.data);
    }

    switch (error.reason) {
      case "JWT_VALIDATE_TOKEN_INVALID":
        logoutUseCase();
        return DataFailed<T>(InvalidToken(reason: error.reason));
      case "JWT_VALIDATE_TOKEN_EXPIRE":
        logoutUseCase();
        return DataFailed<T>(InvalidToken(reason: error.reason));
      case "*_*_*_TOO_MANY_REQUESTS":
        return DataFailed<T>(TooManyRequests(reason: error.reason));

      case "*_*_*_PAYLOAD_TOO_LARGE":
        return DataFailed<T>(RequestBodyTooLargError(reason: error.reason));

      // case "APP_UPDATER_UPDATE_APP_REQUIRED":
      //   goAndRemoveUntil(const UpdateAppPage());
      //   return DataFailed<T>(AppMustUpdateError(reason: error.reason));

      // case "OTP_*_*_INVALID":
      //   return DataFailed<T>(OtpInvalidError(reason: error?.reason));

      case "AUTH_OTP_TOO_MANY_REQUESTS":
        return DataFailed<T>(OtpAleradySent(reason: error.reason));

      case "CREDENTIALS_*_*_INVALID":
        return DataFailed<T>(CredentialsInvalidError(reason: error.reason));

      case "PHONE_*_*_EXISTS":
        return DataFailed<T>(PhoneExistError(reason: error.reason));

      case "USER_*_*_INACTIVE":
        return DataFailed<T>(UserInactiveError(reason: error.reason));

      default:
        return DataFailed<T>(NotFoundResponse(reason: error.reason));
    }
  }

  static handdleRequestExceptionMessages(
    DataFailed result, {
    String? cridentialError,
  }) {
    if (result.error is CredentialsInvalidError && cridentialError != null) {
      showTMDialog(
        title: "fail".tr(),
        msg: cridentialError.tr(),
        icon: FeatherIcons.alertTriangle,
        iconColor: Colors.red,
      );
      return;
    }
    showTMDialog(
      title: "fail".tr(),
      msg: result.error?.reason.tr() ?? "unknown_error".tr(),
      icon: FeatherIcons.alertTriangle,
      iconColor: Colors.red,
    );
  }
}

void errorLog(DioError dioError, {String? T}) {
  Map<String, dynamic> req = {};

  try {
    req = (dioError.requestOptions.data as Map<String, dynamic>);
  } catch (_) {}
  try {
    req["frontSide"] = (req["frontSide"] as String).length.toString();
    req["backSide"] = req["backSide"].length.toString();
    req["embeddedFace"] = req["embeddedFace"].length.toString();
  } catch (_) {}

  Map<String, dynamic> response = {};
  try {
    response = (dioError.response?.data as Map<String, dynamic>);
  } catch (_) {}
  try {
    response["frontSide"] = (response["frontSide"] as String).length;
    response["backSide"] = response["backSide"].length;
    response["embeddedFace"] = response["embeddedFace"].length;
  } catch (_) {}

  kdp(name: "error ", msg: '$response', c: 'r');
  // kdp(name: "datatype", msg: '$T bodyrequest: $req', c: 'r');
}
