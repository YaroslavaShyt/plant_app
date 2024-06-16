import 'package:flutter/material.dart';
import 'package:plant_app/app/core/widgets/app_logo_text.dart';
import 'package:plant_app/app/core/widgets/main_elevated_button.dart';
import 'package:plant_app/app/core/widgets/version.dart';
import 'package:plant_app/app/screens/authentication/presentation/widgets/custom_oval.dart';
import 'package:plant_app/app/utils/images_factory.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: double.infinity,
              child: Image.asset(
                ImagesFactory.startPage,
                fit: BoxFit.fitHeight,
              )),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: CustomPaint(
              size: const Size(500, 800),
              painter: CustomOvalPainter(),
            ),
          ),
          Positioned(
              top: 0,
              bottom: MediaQuery.of(context).size.height / 10,
              left: 0,
              right: 0,
              child: const AppLogoText()),
          Positioned(
              bottom: MediaQuery.of(context).size.height / 4,
              left: MediaQuery.of(context).size.width / 4,
              right: MediaQuery.of(context).size.width / 4,
              child: MainElevatedButton(
                onPressed: () {},
                title: 'Створити акаунт',
              )),
          Positioned(
              bottom: MediaQuery.of(context).size.height / 3,
              left: MediaQuery.of(context).size.width / 4,
              right: MediaQuery.of(context).size.width / 4,
              child: MainElevatedButton(
                onPressed: () {},
                title: 'Здійснити вхід',
              )),
          Positioned(
              bottom: 10,
              left: MediaQuery.of(context).size.width / 2 - 25,
              child: const VersionWidget())
        ],
      ),
    );
  }
}
