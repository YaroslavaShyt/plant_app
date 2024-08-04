import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/app/routing/app_router.dart';
import 'package:plant_app/app/screens/authentication/presentation/screens/auth_factory.dart';
import 'package:plant_app/domain/inavigation_util.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class PlantApp extends StatelessWidget {
  const PlantApp({
    required this.appRouter,
    required this.navigationUtil,
    super.key,
  });

  final AppRouter appRouter;
  final INavigationUtil navigationUtil;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Plant App',
        navigatorKey: navigationUtil.navigatorKey,
        onGenerateRoute: appRouter.onGenerateRoute,
        localizationsDelegates: [
          ...context.localizationDelegates,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: AuthFactory.build() //HomeScreen(),
        );
  }
}
