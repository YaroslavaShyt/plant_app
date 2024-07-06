import 'package:flutter/material.dart';
import 'package:plant_app/app/utils/colors_util.dart';

class MainElevatedButton extends StatelessWidget {
  const MainElevatedButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.height = 48,
    this.width = 218,
  });

  final VoidCallback onPressed;
  final String title;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
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
