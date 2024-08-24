import 'package:flutter/material.dart';
import 'package:plant_app/app/utils/colors_util.dart';

class MainTextField extends StatelessWidget {
  const MainTextField({
    this.label,
    this.hintText,
    this.height = 56,
    this.borderRadius = 20,
    required this.controller,
    super.key,
  });

  final TextEditingController controller;
  final String? label;
  final String? hintText;
  final double height;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(
            label!,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 13,
            ),
          ),
        Container(
          margin: label != null ? const EdgeInsetsDirectional.only(top: 6) : null,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              border: Border.all(color: ColorsUtil.lightGreen, width: 1.5)),
          padding: const EdgeInsetsDirectional.all(10),
          child: TextFormField(
            style: const TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 16,
            ),
            decoration:  InputDecoration(
              border: InputBorder.none,
              hintText: hintText
            ),
            controller: controller,

          ),
        ),
      ],
    );
  }
}
