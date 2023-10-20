import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm_architecture/res/routes/routes_name.dart';
import 'package:get/get.dart';

import '../../../models/login/user_model.dart';
import '../../../repository/login_repository/login_repository.dart';
import '../../../res/utils/utils.dart';
import '../user_prefrences/user_prefrence_view_model.dart';

class LoginViewModel extends GetxController {
  final RxBool loading = false.obs;

  final _api = LoginRepository();

  UserPrefences userPrefences = UserPrefences();

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  void loginApi() {
    loading.value = true;
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text
    };
    _api.loginApi(data).then((value) {
      loading.value = false;
      if (kDebugMode) {
        print('value: {{$value}}');
      }
      if (value['error']) {
        Utils.snackBar('login'.tr, value['user_not_found'.tr]);
      } else {
        UserModel userModel = UserModel(token: value['token'], isLogin: true);
        userPrefences.saveUser(userModel).then((value) {
          Get.delete<LoginViewModel>();
          Get.toNamed(RouteName.homeView)!.then((value) {});
        }).onError((error, stackTrace) {});
        Utils.snackBar('logined'.tr, 'Login successfully.');
      }
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        print('errror: {$error}');
      }
      loading.value = false;

      // Utils.snackBar('errorrrrr', error.toString());
    });
  }

  void newLoginApi() {
    loading.value = true;
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text
    };
    _api.loginApi(data).then((value) {
      loading.value = false;
      if (value['']) {}
    });
  }
}
