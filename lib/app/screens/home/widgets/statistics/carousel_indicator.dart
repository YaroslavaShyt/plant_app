import 'package:flutter/material.dart';
import 'package:plant_app/app/utils/colors_util.dart';

class CarouselIndicator extends StatelessWidget {
  const CarouselIndicator({
    required this.isSelected,
    super.key,
  });

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 4),
      height: 12,
      width: 12,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
      color: isSelected ? ColorsUtil.oliveColor : ColorsUtil.lightGreen
      ),
    );
  }
}
