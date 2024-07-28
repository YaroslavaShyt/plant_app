import 'package:flutter/material.dart';
import 'package:plant_app/app/utils/colors_util.dart';

class MainElevatedButton extends StatelessWidget {
  const MainElevatedButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.height = 48,
    this.width = 218,
    this.borderRadius = 20.0,
  });

  final VoidCallback onPressed;
  final String title;
  final double height;
  final double width;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsUtil.oliveColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: 'Comfortaa',
            fontSize: 13,
            color: ColorsUtil.snowWhiteColor,
          ),
        ),
      ),
    );
  }
}
