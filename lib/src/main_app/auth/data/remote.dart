import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:super_baraem_kidergarten/src/core/functions/functions.dart';
import 'package:super_baraem_kidergarten/src/core/network/data_state.dart';
import 'package:super_baraem_kidergarten/src/core/network/dio_client.dart';
import 'package:super_baraem_kidergarten/src/main_app/auth/data/model/login_model.dart';
import 'package:super_baraem_kidergarten/src/utils/constants/routes.dart';
import 'package:super_baraem_kidergarten/src/utils/extensions/extention.dart';
import 'package:super_baraem_kidergarten/src/utils/injector.dart';

class AuthDataSource {
  Future<DataState<LoginResponse>> loginApi({
    required String email,
    required String password,
  }) async {
    final bodyRequest = {
      "account_email": email,
      "account_password": shaConvert(password),
      // "auth_ip": authData!['query'].toString(),
      // "auth_city":
      //     authData!['country'].toString() + authData!['city'].toString(),
      "auth_lon": 11,
      "auth_lat": 11,
      "auth_phone_details": await getDeviceInfo(),
      "auth_phone_id": await getPhoneId(),
    };
    L.error(name: 'login body request:', msg: jsonEncode(bodyRequest));

    final response = await getIt<DioClient>()
        .instance('')
        .post(
          loginUrl,
          data: bodyRequest,
          options: Options(headers: {"isRequiredToken": false}),
        )
        .resultWithoutData(LoginResponse.fromJson);
    return response;
  }
}
