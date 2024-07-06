import 'package:flutter/material.dart';
import 'package:plant_app/app/core/widgets/app_logo_text.dart';
import 'package:plant_app/app/core/widgets/main_elevated_button.dart';
import 'package:plant_app/app/core/widgets/version.dart';
import 'package:plant_app/app/screens/authentication/presentation/widgets/custom_oval.dart';
import 'package:plant_app/app/utils/images_factory.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation =
        Tween<double>(begin: 400, end: 800).animate(_animationController)
          ..addListener(() {
            setState(() {});
          });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _startAnimation() {
    _animationController.forward(from: 0.0);
  }

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
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return CustomPaint(
                  size: Size(500, _animation.value),
                  painter: CustomOvalPainter(),
                );
              },
            ),
          ),
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Positioned(
                bottom: MediaQuery.of(context).size.height / 3.5 +
                    (_animation.value - 400) / 2,
                left: 0,
                right: 0,
                child: const AppLogoText(),
              );
            },
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 14,
            left: MediaQuery.of(context).size.width / 3.5,
            right: MediaQuery.of(context).size.width / 3.5,
            child: MainElevatedButton(
              onPressed: _startAnimation,
              title: 'Розпочати',
            ),
          ),
          const Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: VersionWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
