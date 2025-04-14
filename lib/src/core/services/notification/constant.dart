import 'package:flutter_local_notifications/flutter_local_notifications.dart';

const AndroidNotificationChannel channel = AndroidNotificationChannel(
  'high_importance_channel',
  'High Importance Channel',
  description: 'This channel is used for important notifications',
  importance: Importance.high,
  playSound: true,
);

const androidNotificationDetail = AndroidNotificationDetails(
  'super_baeaem_kidergarten_dev_channel_id',
  'super_baeaem_kidergarten_dev_channel',
  importance: Importance.max,
  playSound: true,
  icon: '@drawable/notificaion_icon',
);

const notificationDetails = NotificationDetails(
  android: androidNotificationDetail,
);
