import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/app/utils/colors_util.dart';

class MainDrawerItem extends StatelessWidget {
  const MainDrawerItem({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15.0, left: 25.0, right: 25.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: ColorsUtil.snowWhiteColor,
                ),
                const SizedBox(
                  width: 40,
                ),
                Text(
                  label.tr().toString(),
                  style: const TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: ColorsUtil.snowWhiteColor,
                  ),
                )
              ],
            ),
            const SizedBox(height: 10,),
            const Divider(color: ColorsUtil.snowWhiteColor,)
          ],
        ),
      ),
    );
  }
}
