import 'package:flutter/material.dart';
import 'package:plant_app/app/core/widgets/app_logo_text_line.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppLogoTextLine(),
    );
  }
}
