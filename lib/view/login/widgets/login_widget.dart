import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm_architecture/res/components/round_button.dart';
import 'package:flutter_app_mvvm_architecture/view_models/controllers/login/login_view_model.dart';
import 'package:get/get.dart';

class LoginButtonWidget extends StatelessWidget {
  final formkey;
  LoginButtonWidget({super.key, required this.formkey});
  final loginViewModel = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return Obx(() => RoundButton(
        width: 200,
        title: 'Submit',
        loading: loginViewModel.loading.value,
        onPress: () {
          if (formkey.currentState!.validate()) {
            loginViewModel.loginApi();
          }
        }));
  }
}
