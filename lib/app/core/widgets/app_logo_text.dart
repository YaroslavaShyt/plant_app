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
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w600,
              fontSize: 64),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ap",
              style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w600,
                  fontSize: 64),
            ),
            Text(
              'p',
              style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w600,
                  color: ColorsUtil.violetColor,
                  fontSize: 64),
            )
          ],
        )
      ],
    );
  }
}
