import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:super_baraem_kidergarten/src/core/services/notification/constant.dart';

class LocalNotification {
  static FlutterLocalNotificationsPlugin localNotification =
      FlutterLocalNotificationsPlugin();

  static bool isLocalNotificationInitial = false;
  static Future<void> setupFlutterNotifications() async {
    if (isLocalNotificationInitial) {
      return;
    }

    const androidInitializationSetting = AndroidInitializationSettings(
      '@drawable/notificaion_icon',
    );
    const iosInitializationSetting = DarwinInitializationSettings();
    const initSettings = InitializationSettings(
      android: androidInitializationSetting,
      iOS: iosInitializationSetting,
    );

    await localNotification.initialize(initSettings);
    await localNotification
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.createNotificationChannel(channel);
  }

  Future<void> showNotification({
    required String title,
    required String subtitle,
    required int id,
  }) async {
    if (!isLocalNotificationInitial) {
      await setupFlutterNotifications();
    }

    await localNotification.show(id, title, subtitle, notificationDetails);
  }
}
