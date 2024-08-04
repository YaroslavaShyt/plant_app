import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/app/core/widgets/app_logo_text.dart';
import 'package:plant_app/app/core/widgets/main_elevated_button.dart';
import 'package:plant_app/app/core/widgets/main_text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm(
      {super.key,
      required this.onLoginPressed,
      required this.emailTextController,
      required this.passwordTextController,
     });

final VoidCallback onLoginPressed;
  final TextEditingController emailTextController;
  final TextEditingController passwordTextController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(
        horizontal: 46,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          const AppLogoText(),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Login".tr().toString(),
            style: const TextStyle(
                fontFamily: 'Comfortaa',
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          MainTextField(
            label: "email".tr().toString(),
            controller: emailTextController,
          ),
          const SizedBox(
            height: 30,
          ),
          MainTextField(
            label: "password".tr().toString(),
            controller: passwordTextController,
          ),
          const SizedBox(
            height: 100,
          ),
          MainElevatedButton(
            onPressed: onLoginPressed,
            title: "login".tr().toString(),
          )
        ],
      ),
    );
  }
}
