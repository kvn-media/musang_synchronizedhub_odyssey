import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:musang_syncronizehub_odyssey/services/platform_service.dart';
import 'package:musang_syncronizehub_odyssey/services/postgrest_service.dart';
import 'package:musang_syncronizehub_odyssey/common_widgets/theme/theme.dart';
import 'package:musang_syncronizehub_odyssey/repos/auth_repo/auth_repo.dart';

import 'firebase_options.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.put(AuthRepo()));

  var postgrestService = PostgrestService();
  await postgrestService.initialize();
  Get.put(postgrestService);

  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');
  final InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
  );
  await flutterLocalNotificationsPlugin.initialize(initializationSettings);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key) {
    platformService = PlatformService();
  }

  late final PlatformService platformService;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    platformService.detectPlatform();

    return Sizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          theme: TAppTheme.lightTheme,
          darkTheme: TAppTheme.darkTheme,
          themeMode: ThemeMode.system,
          debugShowCheckedModeBanner: false,
          defaultTransition: Transition.leftToRightWithFade,
          transitionDuration: const Duration(milliseconds: 1000),
          home: const CircularProgressIndicator(),
        );
      },
    );
  }
}
