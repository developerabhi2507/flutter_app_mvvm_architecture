import 'package:flutter_app_mvvm_architecture/view/login/login_view.dart';
import 'package:get/get.dart';

import '../../view/splash_screen.dart';
import 'routes_name.dart';

class AppRoutes {
  static const initial = '/';
  static appRoutes() => [
        GetPage(
            name: RouteName.splashView,
            page: () => const SplashScreen(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.loginView,
            page: () => const LoginView(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
      ];
}
