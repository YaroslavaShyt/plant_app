import 'package:flutter/material.dart';
import 'package:plant_app/app/core/widgets/app_logo_text_line.dart';
import 'package:plant_app/app/screens/home/widgets/main_drawer/drawer_item.dart';
import 'package:plant_app/app/utils/colors_util.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorsUtil.oliveColor,
      child: ListView(
        children: [
          Container(
              height: 120,
              margin: const EdgeInsets.all(0),
              padding: const EdgeInsets.all(0),
              decoration:  const BoxDecoration(
                color: ColorsUtil.snowWhiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: const AppLogoTextLine()),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MainDrawerItem(
                  icon: Icons.menu,
                  label: "myCollections",
                  onTap: () {},
                ),
                MainDrawerItem(
                  icon: Icons.question_mark_rounded,
                  label: "tutorial",
                  onTap: () {},
                ),
                MainDrawerItem(
                  icon: Icons.settings,
                  label: "settings",
                  onTap: () {},
                ),
                MainDrawerItem(
                  icon: Icons.abc,
                  label: "bucket",
                  onTap: () {},
                ),
                MainDrawerItem(
                  icon: Icons.exit_to_app_rounded,
                  label: "exit",
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
