import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm_architecture/res/utils/utils.dart';
import 'package:flutter_app_mvvm_architecture/view_models/controllers/login/login_view_model.dart';
import 'package:get/get.dart';

class InputEmailWidget extends StatelessWidget {
  InputEmailWidget({super.key});

  final loginViewModel = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginViewModel.emailController.value,
      focusNode: loginViewModel.emailFocusNode.value,
      validator: (value) {
        if (value!.isEmpty) {
          Utils.snackBar('Email', 'Enter Email');
        }
        return null;
      },
      onFieldSubmitted: (value) {
        Utils.fieldFocusChange(context, loginViewModel.emailFocusNode.value,
            loginViewModel.passwordFocusNode.value);
      },
      decoration: InputDecoration(
          hintText: 'email_hint'.tr, border: OutlineInputBorder()),
    );
  }
}
