import 'dart:async';
import 'package:get/get.dart';

import '../../res/routes/routes_name.dart';

class SplashServices {
  void isFetchDetails() {
    Timer(const Duration(seconds: 5), () => Get.toNamed(RouteName.loginView));
  }
}
