import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/login/user_model.dart';
import '../../../repository/login/login_repository.dart';
import '../../../res/utils/utils.dart';
import '../user_prefrences/user_prefrence_view_model.dart';

class LoginController extends GetxController {
  final RxBool loading = true.obs;

  final _api = LoginRepository();

  UserPrefences userPrefences = UserPrefences();

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  void loginApi() {
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text
    };
    _api.loginApi(data).then((value) {
      loading.value = false;
      if (value['error'.tr] == 'user_not_found'.tr) {
        Utils.snackBar('login'.tr, value['error'.tr]);
      } else {
        userPrefences
            .saveUser(UserModel.fromJson(value))
            .then((value) {})
            .onError((error, stackTrace) {});
        Utils.snackBar('logined'.tr, 'Login successfully.');
      }
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        print(error.toString());
      }
      loading.value = false;
      Utils.snackBar('error'.tr, error.toString());
    });
  }
}
