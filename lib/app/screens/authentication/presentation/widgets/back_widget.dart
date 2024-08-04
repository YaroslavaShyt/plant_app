import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/app/utils/colors_util.dart';

class BackWidget extends StatelessWidget {
  const BackWidget({required this.onTap, super.key});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsetsDirectional.all(4.0),
            decoration: BoxDecoration(
                color: ColorsUtil.oliveColor,
                borderRadius: BorderRadius.circular(10)),
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: ColorsUtil.brownText,
            ),
          ),
          const SizedBox(
            width: 6,
          ),
          Text(
            "back".tr().toString(),
            style: const TextStyle(
                fontFamily: 'Comfortaa',
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
