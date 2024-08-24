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
    this.icon,
    this.backgroundColor = ColorsUtil.oliveColor
  });

  final VoidCallback onPressed;
  final Icon? icon;
  final String title;
  final double height;
  final double width;
  final double borderRadius;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            if (icon != null) icon!,
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'Comfortaa',
                fontSize: 13,
                color: ColorsUtil.snowWhiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
