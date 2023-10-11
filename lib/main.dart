import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'res/locals/languages.dart';
import 'res/routes/routes.dart';
import 'res/routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Antivirus App',
      themeMode: ThemeMode.system,
      // theme: ThemeService().lightTheme,
      // darkTheme: ThemeService().darkTheme,
      translations: Languages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      //   translations: LocalString(),
      //   locale: const Locale('en', 'US'),
      // supportedLocales: LocalizationService.getSupportedLocales(),
      // localeResolutionCallback: LocalizationService().localeResolutionCallback,
      // navigatorKey: NavigationService.navigationKey,
      // initialBinding: AppBindings(),
      initialRoute: RouteName.splashView,
      getPages: AppRoutes.appRoutes(),
      // home: SplashScreen(),
    );
  }
}
