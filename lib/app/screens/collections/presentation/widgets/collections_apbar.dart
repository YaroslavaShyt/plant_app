import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/app/core/widgets/main_elevated_button.dart';
import 'package:plant_app/app/screens/collections/presentation/widgets/back_button_appbar.dart';
import 'package:plant_app/app/utils/colors_util.dart';

class CollectionsAppbar extends StatelessWidget {
  const CollectionsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leadingWidth: 40,
      toolbarHeight: 40,
      leading: AppbarBackButton(),
      title: Text(
        "myCollections".tr().toString(),
        style: const TextStyle(
          fontFamily: 'Comfortaa',
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: ColorsUtil.brownText,
        ),
      ),
      actions: [
        MainElevatedButton(
          borderRadius: 10,
          width: 150,
          height: 35,
          backgroundColor: ColorsUtil.lightBrown,
          onPressed: () {},
          title: 'newCollection'.tr().toString(),
        ),
      ],
    );
  }
}
