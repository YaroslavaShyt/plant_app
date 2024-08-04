import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/app/core/widgets/app_logo_text.dart';
import 'package:plant_app/app/core/widgets/main_elevated_button.dart';
import 'package:plant_app/app/core/widgets/main_text_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm(
      {super.key,
      required this.onSignUpPressed,
      required this.emailTextController,
      required this.passwordTextController,
      required this.confirmPasswordTextController});

final VoidCallback onSignUpPressed;
  final TextEditingController emailTextController;
  final TextEditingController passwordTextController;
  final TextEditingController confirmPasswordTextController;

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
            "SignUp".tr().toString(),
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
            height: 30,
          ),
          MainTextField(
            label: "repeatPassword".tr().toString(),
            controller: confirmPasswordTextController,
          ),
          const SizedBox(
            height: 70,
          ),
          MainElevatedButton(
            onPressed: onSignUpPressed,
            title: "signUp".tr().toString(),
          )
        ],
      ),
    );
  }
}
