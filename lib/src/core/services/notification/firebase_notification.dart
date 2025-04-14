import 'dart:convert';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:super_baraem_kidergarten/firebase_options.dart';
import 'package:super_baraem_kidergarten/src/core/local_db/local_db.dart';
import 'package:super_baraem_kidergarten/src/core/services/notification/local_notification.dart';
import 'package:super_baraem_kidergarten/src/utils/extensions/extention.dart';

Future<void> _firebaseMessagingInAppAndONTerminated(
  RemoteMessage message,
) async {
  kdp(name: "FirebaseNotification", msg: jsonEncode(message.toMap()), c: 'gr');
  if (message.notification != null) {}

  if (message.notification?.title != null &&
      message.notification?.body != null) {
    LocalNotification().showNotification(
      title: message.notification?.title ?? "title",
      subtitle: message.notification?.body ?? "body",
      id: DateTime.now().millisecond,
    );
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  if (message.notification != null) {}
}

class FirebaseNotification {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static config() async {
    final platformConfig = DefaultFirebaseOptions.currentPlatform;
    try {
      await Firebase.initializeApp(
        name: "super_baraem_kidergarten",
        options: platformConfig,
      );

      // return;
      if (Platform.isAndroid) {
        await FirebaseMessaging.instance.setAutoInitEnabled(true);
      }

      await messaging.setForegroundNotificationPresentationOptions(
        alert: false, // Required to display a heads up notification
        badge: false,
        sound: false,
      );
      requestPermition();
      FirebaseMessaging.onBackgroundMessage(
        _firebaseMessagingBackgroundHandler,
      );

      try {
        final deviceToken = await messaging.getToken();
        L.info(name: "deviceToken:", msg: deviceToken);
        LocalDatabase.saveFCMToken(deviceToken);
      } catch (_) {}

      FirebaseMessaging.onMessage.listen(
        _firebaseMessagingInAppAndONTerminated,
      );
      LocalNotification.setupFlutterNotifications();

      FirebaseMessaging.instance.getInitialMessage();
    } catch (e) {
      L.error(name: "FirebaseNotification", msg: e.toString());
    }
  }

  static Future<String?> getFCMToken() async {
    try {
      String? token = await FirebaseMessaging.instance.getToken();
      if (token == null) {
        token = await FirebaseMessaging.instance.getToken() ?? "";
        await LocalDatabase.saveFCMToken(token);
      }
      return token;
    } catch (e) {
      L.error(name: "FirebaseNotification", msg: e.toString());
      return null;
    }
  }

  static subscriopeTopic(String topic) async {
    L.info(name: "FirebaseNotification", msg: topic);
    FirebaseMessaging.instance.subscribeToTopic(topic);
  }

  static deleteFcmToken() {
    FirebaseMessaging.instance.deleteToken();
  }

  static Future<NotificationSettings> requestPermition() async {
    final settings = await FirebaseMessaging.instance.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
    if (settings.authorizationStatus != AuthorizationStatus.authorized) {
      // if not granted, ask it again
      await FirebaseMessaging.instance.requestPermission(
        alert: true,
        badge: true,
        sound: true,
      );
    }
    // kdp(
    //     name: "FirebaseNotification",
    //     msg: settings.authorizationStatus,
    //     c: 'm');
    return settings;
  }
}
