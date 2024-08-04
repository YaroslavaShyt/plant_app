import 'package:flutter/material.dart';
import 'package:plant_app/app/routing/app_router.dart';
import 'package:plant_app/app/utils/di_manager.dart';
import 'package:plant_app/domain/inavigation_util.dart';
import 'package:plant_app/plant_app.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  final AppRouter appRouter = AppRouter();
  await initDIComponents();
  runApp(EasyLocalization(
    supportedLocales: const [
      Locale('uk', 'UA'),
    ],
    path: 'assets/translations',
    
    fallbackLocale: const Locale('uk', 'UA'),
    child: PlantApp(
      appRouter: appRouter,
      navigationUtil: diManager.get<INavigationUtil>(),
    ),
  ));
}
