import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:super_baraem_kidergarten/src/core/local_db/local_db.dart';
import 'package:super_baraem_kidergarten/src/core/services/notification/firebase_notification.dart';
import 'package:super_baraem_kidergarten/src/main_app/auth/presentation/page/login_page.dart';
import 'package:super_baraem_kidergarten/src/main_app/presentation/cubit/navigation_cubit.dart';
import 'package:super_baraem_kidergarten/src/main_app/presentation/pages/main_navigation.dart';
import 'package:super_baraem_kidergarten/src/utils/injector.dart';
import 'package:super_baraem_kidergarten/src/utils/theme.dart';
import 'package:super_baraem_kidergarten/src/utils/utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureHive();
  packageInfo = await PackageInfo.fromPlatform();
  await LocalDatabase.iniLocalDataBase();
  FirebaseNotification.config();
  registerDependencies();
  runApp(const MyApp());
}

Future<void> configureHive() async {
  await Hive.initFlutter();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigationCubit>(create: (context) => NavigationCubit()),
      ],
      child: MaterialApp(
        title: appName,

        debugShowCheckedModeBanner: false,
        locale: const Locale("ar", 'IQ'),
        navigatorKey: navigatorKey,

        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', 'US'), // English
          Locale('ar', 'IQ'), // Arabic
        ],
        theme: getTheme(context),
        themeMode: ThemeMode.light,
        home:
            LocalDatabase.getLoginCredential() == null
                ? const LoginPage()
                : const MainNavigationPage(),
      ),
    );
  }
}
