import 'package:flutter/material.dart';
import 'package:plant_app/app/utils/colors_util.dart';

class AppLogoTextLine extends StatelessWidget {
  const AppLogoTextLine({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Plant",
          style: TextStyle(
              height: 1,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w600,
              fontSize: 40),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "ap",
          style: TextStyle(
              height: 1,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w600,
              fontSize: 40),
        ),
        Text(
          'p',
          style: TextStyle(
              height: 1,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w600,
              color: ColorsUtil.violetColor,
              fontSize: 40),
        )
      ],
    );
  }
}
