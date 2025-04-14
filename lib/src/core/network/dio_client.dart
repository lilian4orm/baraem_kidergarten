import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:super_baraem_kidergarten/src/core/models/error_model.dart';
import 'package:super_baraem_kidergarten/src/core/network/data_state.dart';
import 'package:super_baraem_kidergarten/src/core/network/dio_interceptor.dart';
import 'package:super_baraem_kidergarten/src/core/network/dio_log_interceptor.dart';
import 'package:super_baraem_kidergarten/src/core/network/network_handle_error.dart';
import 'package:super_baraem_kidergarten/src/utils/extensions/extention.dart';
import 'package:super_baraem_kidergarten/src/utils/utils.dart';

@lazySingleton
class DioClient {
  Dio instance(String? url) {
    // final token = LocalDatabase.getToken();
    var dio = Dio();

    // dio.options.headers['X-App-Language'] =
    //     LocalDatabase.getLocalization().name;
    dio.options.headers['Accept'] = 'application/json';
    dio.options.headers['Content-Type'] = 'application/json';
    dio.options.headers['app-build-number'] = packageInfo?.buildNumber ?? "0";
    dio.options.headers['app-platform-type'] =
        Platform.isAndroid
            ? "ANDROID"
            : Platform.isIOS
            ? "IOS"
            : "OTHER";

    dio.interceptors.add(DioInterceptor(dio));
    dio.interceptors.add(DioLogger());

    return dio;
  }
}

extension ApiCallHandler<T> on Future<Response<dynamic>> {
  Future<DataState<T>> result<T>(
    T Function(Map<String, dynamic> json) dataType,
  ) async {
    try {
      final data = await this;
      kdp(name: "datafadf", msg: jsonEncode(data.data), c: "gr");
      return DataSuccess(dataType(data.data["data"]));
    } on DioError catch (dioError) {
      return NetworkHandler.getDataFailed<T>(dioError);
    } catch (error) {
      L.error(name: "Exaption", msg: error.toString());
      return DataFailed(InternetConnectionError());
    }
  }

  Future<DataState<T>> resultWithList<T>(
    T Function(List<dynamic> json) dataType,
  ) async {
    try {
      final data = await this;
      //   kdp(name: "datafadf", msg: jsonEncode(data.data), c: "gr");

      return DataSuccess(dataType(data.data["data"]));
    } on DioError catch (dioError) {
      return NetworkHandler.getDataFailed<T>(dioError);
    } catch (error) {
      return DataFailed(InternetConnectionError());
    }
  }

  Future<DataState<T>> resultWithoutData<T>(
    T Function(Map<String, dynamic> json) dataType,
  ) async {
    try {
      final data = await this;
      //kdp(name: "resultWithoutData", msg: jsonEncode(data.data), c: "m");

      return DataSuccess(dataType(data.data));
    } on DioError catch (dioError) {
      return NetworkHandler.getDataFailed<T>(dioError);
    } catch (error) {
      return DataFailed(InternetConnectionError());
    }
  }

  Future<DataState<T>> resultWithTypeResponse<T, RT>(
    Function(RT json) dataType,
  ) async {
    try {
      final data = await this;
      // L.success(name: "s", msg: data.data.toString());
      return DataSuccess(dataType(data.data["data"] as RT));
    } on DioError catch (dioError) {
      return NetworkHandler.getDataFailed<T>(dioError);
    } catch (error) {
      kdp(name: "Exaption: ", msg: error, c: "r");
      return DataFailed(InternetConnectionError());
    }
  }
}
