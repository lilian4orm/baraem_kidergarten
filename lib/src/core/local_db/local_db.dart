import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:super_baraem_kidergarten/src/core/services/notification/firebase_notification.dart';
import 'package:super_baraem_kidergarten/src/main_app/auth/data/model/login_model.dart';
import 'package:super_baraem_kidergarten/src/utils/constants/const.dart';

class LocalDatabase {
  static Future<void> iniLocalDataBase() async {
    await Hive.openBox(appKeyStorage);
  }

  static Future<int> clearData() {
    return Hive.box(appKeyStorage).clear();
  }

  static saveLoginCredential(LoginModel? loginModel) {
    if (loginModel == null) {
      return;
    }
    addAccountToLocal(loginModel);
    Hive.box(
      appKeyStorage,
    ).put("loginCredential", jsonEncode(loginModel.toMap()));
  }

  static LoginModel? getLoginCredential() {
    final data = Hive.box(appKeyStorage).get("loginCredential");

    if (data == null) {
      return null;
    }

    try {
      return (LoginModel.fromJson((jsonDecode(data))));
    } catch (e) {
      return null;
    }
  }

  static addAccountToLocal(LoginModel? loginModel) {
    if (loginModel == null) {
      return;
    }
    final accounts = getAccountToLocal();
    List<LoginModel> loginModelList = [];
    loginModelList.addAll(accounts?.accounts ?? []);
    if (loginModelList.indexWhere((ac) => ac.id == loginModel.id) == -1) {
      loginModelList.add(loginModel);
    }
    Hive.box(appKeyStorage).put(
      "loacal_accounts_storage_key",
      LocalAccounts(accounts: loginModelList).toMap(),
    );
  }

  static LocalAccounts? getAccountToLocal() {
    final data = Hive.box(appKeyStorage).get("loacal_accounts_storage_key");

    if (data == null) {
      return null;
    }

    try {
      return (LocalAccounts.fromJson((data as Map<dynamic, dynamic>).cast()));
    } catch (e) {
      return null;
    }
  }

  static Future<void> saveFCMToken(String? deviceToken) async {
    await Hive.box(appKeyStorage).put("fcm_token_storage_key", deviceToken);
  }

  static Future<String?> getFCMToken() async {
    String? token = Hive.box(appKeyStorage).get("fcm_token_storage_key");
    if (token == null) {
      token = await FirebaseNotification.getFCMToken() ?? "";
      await saveFCMToken(token);
      return token;
    }
    return token;
  }

  static void deleteData() {
    Hive.box(appKeyStorage).delete("loginCredential");
    Hive.box(appKeyStorage).delete("fcm_token_storage_key");
    Hive.box(appKeyStorage).delete("loacal_accounts_storage_key");
  }
}
