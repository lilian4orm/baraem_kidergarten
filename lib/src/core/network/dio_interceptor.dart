import 'package:dio/dio.dart';
import 'package:super_baraem_kidergarten/src/core/functions/functions.dart';
import 'package:super_baraem_kidergarten/src/core/local_db/local_db.dart';
import 'package:super_baraem_kidergarten/src/main_app/auth/data/model/login_model.dart';
import 'package:super_baraem_kidergarten/src/utils/constants/routes.dart';

class DioInterceptor extends InterceptorsWrapper {
  final Dio dio;
  DioInterceptor(this.dio);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (options.headers["isRequiredToken"] == false) {
      options.headers.remove("isRequiredToken");
      return handler.next(options);
    }

    // get tokens from local storage, you can use Hive or flutter_secure_storage
    final loginModelDb = LocalDatabase.getLoginCredential();

    if (loginModelDb == null &&
        loginModelDb?.token == null &&
        loginModelDb?.refreshToken == null) {
      logoutUseCase();
      final error = DioError(requestOptions: options);
      return handler.reject(error);
    }

    // check if tokens have already expired or not

    // final tokenHasExpired = JwtDecoder.isExpired(loginModelDb!.token);

    // if (tokenHasExpired) {
    //   LoginModel? loginModel = await refreshToken(loginModelDb.refreshToken!);

    //   if (loginModel?.token == null) {
    //     final error = DioError(requestOptions: options);
    //     return handler.reject(error);
    //   }
    //   await LocalDatabase.saveLoginCredential(loginModel!);

    //   options.headers["Authorization"] = loginModel.token;

    //   return handler.next(options);
    // }

    // add access token to the request header
    options.headers["Authorization"] = loginModelDb?.token;
    return handler.next(options);
  }

  @override
  onResponse(Response response, ResponseInterceptorHandler handler) async {
    handler.next(response);
  }

  Future<LoginModel?> refreshToken(String refreshToken) async {
    try {
      var response = await Dio().post(
        refreshTokenUrl,
        options: Options(headers: {"X-Token-Refresh": refreshToken}),
      );

      LoginModel requestResponse = LoginModel.fromJson(response.data["data"]);

      return requestResponse;
    } catch (e) {
      logoutUseCase();
      return null;
    }
  }
}
