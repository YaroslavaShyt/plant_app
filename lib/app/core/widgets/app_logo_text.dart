import 'package:flutter/material.dart';
import 'package:plant_app/app/utils/colors_util.dart';

class AppLogoText extends StatelessWidget {
  const AppLogoText({super.key, this.logoStyle});

  final TextStyle? logoStyle;

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Plant",
          style: TextStyle(
              height: 1,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w600,
              fontSize: 60),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ap",
              style: TextStyle(
                  height: 1,
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w600,
                  fontSize: 60),
            ),
            Text(
              'p',
              style: TextStyle(
                  height: 1,
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w600,
                  color: ColorsUtil.violetColor,
                  fontSize: 60),
            )
          ],
        )
      ],
    );
  }
}
