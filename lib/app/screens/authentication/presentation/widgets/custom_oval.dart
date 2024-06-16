import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plant_app/app/utils/colors_util.dart';

class CustomOvalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = ColorsUtil.snowWhiteColor
      ..style = PaintingStyle.fill;

    final path = Path();

    path.moveTo(0, size.height / 2.5);
    path.lineTo(size.width, size.height / 2.5);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    path.moveTo(0, size.height / 2.8);
    path.addOval(Rect.fromCenter(
        center: Offset(size.width / 2, size.height / 2),
        width: size.width + 35,
        height: size.height / 1.5));

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
