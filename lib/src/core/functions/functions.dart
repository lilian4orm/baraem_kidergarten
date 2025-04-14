import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:intl/intl.dart';
import 'package:mobile_device_identifier/mobile_device_identifier.dart';
import 'package:super_baraem_kidergarten/src/core/local_db/local_db.dart';
import 'package:super_baraem_kidergarten/src/core/services/notification/firebase_notification.dart';
import 'package:super_baraem_kidergarten/src/main_app/auth/presentation/page/login_page.dart';
import 'package:super_baraem_kidergarten/src/utils/utils.dart';

void logoutUseCase() async {
  try {
    FirebaseNotification.deleteFcmToken();
  } catch (_) {}

  LocalDatabase.deleteData();

  navigatorKey.currentState!.pushAndRemoveUntil(
    MaterialPageRoute(builder: (c) => const LoginPage()),
    (route) => false,
  );
}

DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
getDeviceInfo() async {
  if (Platform.isAndroid) {
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    return "${androidInfo.manufacturer}, ${androidInfo.brand}, ${androidInfo.model}, ${androidInfo.board}";
  } else if (Platform.isIOS) {
    IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
    return "${iosDeviceInfo.utsname.machine}, ${iosDeviceInfo.utsname.sysname}, ${iosDeviceInfo.model}";
  } else {
    return "NoData";
  }
}

Future<String?> getPhoneId() async {
  final mobileDeviceIdentifier = MobileDeviceIdentifier().getDeviceId();

  return mobileDeviceIdentifier;
}

shaConvert(pass) {
  var bytes = utf8.encode(pass);
  Digest sha512Result = sha512.convert(bytes);
  return sha512Result.toString();
}

Future<XFile?> compressAndGetFile(XFile file, String targetPath) async {
  String getRand = RandomGen().getRandomString(5);
  var result = await FlutterImageCompress.compressAndGetFile(
    file.path,
    "$targetPath/img_$getRand.jpg",
    quality: 40,
  );
  return result;
}

class RandomGen {
  final _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  final Random _rnd = Random();
  String getRandomString(int length) => String.fromCharCodes(
    Iterable.generate(
      length,
      (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length)),
    ),
  );
}

String fromISOToDate(String date) {
  String formattedDate = DateFormat('yyyy-MM-dd').format(DateTime.parse(date));
  return formattedDate;
}
