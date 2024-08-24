import 'package:flutter/material.dart';
import 'package:plant_app/app/utils/colors_util.dart';
import 'package:plant_app/app/utils/di_manager.dart';
import 'package:plant_app/domain/inavigation_util.dart';

class AppbarBackButton extends StatelessWidget {
  AppbarBackButton({super.key});

  final VoidCallback onTap = diManager.get<INavigationUtil>().navigateBack;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: ColorsUtil.oliveColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.arrow_back_rounded,
          color: ColorsUtil.snowWhiteColor,
        ),
      ),
    );
  }
}
