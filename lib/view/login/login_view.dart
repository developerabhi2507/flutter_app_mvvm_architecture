import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm_architecture/view/login/widgets/input_email_widget.dart';
import 'package:flutter_app_mvvm_architecture/view/login/widgets/input_password_widget.dart';
import 'package:flutter_app_mvvm_architecture/view/login/widgets/login_widget.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('login'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
                key: _formkey,
                child: Column(
                  children: [
                    InputEmailWidget(),
                    const SizedBox(
                      height: 20,
                    ),
                    InputPasswordWidget(),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            LoginButtonWidget(
              formkey: _formkey,
            )
          ],
        ),
      ),
    );
  }
}
