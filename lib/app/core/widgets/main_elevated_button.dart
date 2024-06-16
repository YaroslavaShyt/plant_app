import 'package:flutter/material.dart';
import 'package:plant_app/app/utils/colors_util.dart';

class MainElevatedButton extends StatelessWidget {
  const MainElevatedButton(
      {super.key, required this.onPressed, required this.title});

  final VoidCallback onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 218,
        height: 46,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorsUtil.oliveColor,
          ),
          child: Text(title,
              style: const TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 13,
                  color: ColorsUtil.snowWhiteColor)),
        ));
  }
}
