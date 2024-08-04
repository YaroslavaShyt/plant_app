import 'package:flutter/material.dart';
import 'package:plant_app/app/utils/colors_util.dart';

class MainTextField extends StatelessWidget {
  const MainTextField({
    required this.label,
    required this.controller,
    super.key,
  });

  final TextEditingController controller;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          textAlign: TextAlign.start,
          style: const TextStyle(
            fontFamily: 'Comfortaa',
            fontSize: 13,
          ),
        ),
        Container(
          margin: const EdgeInsetsDirectional.only(top: 6),
          height: 56,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: ColorsUtil.lightGreen, width: 1.5)),
          padding: const EdgeInsetsDirectional.all(10),
          child: TextField(
            style: const TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 16,
            ),
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            controller: controller,
          ),
        ),
      ],
    );
  }
}
