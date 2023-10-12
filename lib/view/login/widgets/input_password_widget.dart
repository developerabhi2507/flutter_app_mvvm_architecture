import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm_architecture/res/utils/utils.dart';
import 'package:flutter_app_mvvm_architecture/view_models/controllers/login/login_view_model.dart';
import 'package:get/get.dart';

class InputPasswordWidget extends StatelessWidget {
  InputPasswordWidget({super.key});

  final loginViewModel = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginViewModel.passwordController.value,
      focusNode: loginViewModel.passwordFocusNode.value,
      validator: (value) {
        if (value!.isEmpty) {
          Utils.snackBar('Password', 'Enter Password');
        }
        return null;
      },
      onFieldSubmitted: (value) {},
      decoration: InputDecoration(
          hintText: 'password_hint'.tr, border: OutlineInputBorder()),
    );
  }
}
