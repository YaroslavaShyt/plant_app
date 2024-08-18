import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/app/utils/colors_util.dart';

class StatisticsCircle extends StatelessWidget {
  const StatisticsCircle(
      {this.color = ColorsUtil.brownText,
      this.label = '',
      this.height = 80,
      this.width = 80,
      required this.number,
      super.key});

  final double height;
  final double width;
  final Color color;
  final int number;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: color, width: 4),
          ),
          child: Center(
            child: Text(
              number.toString(),
              style: const TextStyle(
                fontFamily: 'Comfortaa',
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: ColorsUtil.brownText,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10,),
        Text(
          label.tr().toString(),
          style: const TextStyle(
            fontFamily: 'Comfortaa',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: ColorsUtil.greyText,
          ),
        ),
      ],
    );
  }
}
