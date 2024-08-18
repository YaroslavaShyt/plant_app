import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/app/core/widgets/app_logo_text_line.dart';
import 'package:plant_app/app/core/widgets/main_elevated_button.dart';
import 'package:plant_app/app/screens/home/widgets/collections_carousel_widget.dart';
import 'package:plant_app/app/screens/home/widgets/main_drawer/main_drawer.dart';
import 'package:plant_app/app/screens/home/widgets/statistics/statistics_carousel_widget.dart';
import 'package:plant_app/app/utils/colors_util.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: const MainDrawer(),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsetsDirectional.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppLogoTextLine(),
                MainElevatedButton(
                  borderRadius: 10,
                  height: 38,
                  width: 116,
                  onPressed: _scaffoldKey.currentState?.openEndDrawer ?? (){},
                  icon: const Icon(
                    Icons.menu,
                    color: ColorsUtil.snowWhiteColor,
                  ),
                  title: 'menu'.tr().toString(),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "myCollections".tr().toString(),
              style: const TextStyle(
                fontFamily: 'Comfortaa',
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: ColorsUtil.brownText,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CollectionsCarouselWidget(),
            const SizedBox(height: 20,),
            MainElevatedButton(
              borderRadius: 18,
              height: 60,
              width: double.maxFinite,
              onPressed: (){}, title: 'createACollection'.tr().toString(),),
            const SizedBox(height: 20,),

            Text(
              "statistics".tr().toString(),
              style: const TextStyle(
                fontFamily: 'Comfortaa',
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: ColorsUtil.brownText,
              ),
            ),
            const SizedBox(height: 20,),
             SizedBox(
              height: 600,
              child: StatisticsCarouselWidget(),
            )
          ],
        ),
      )),
    );
  }
}
