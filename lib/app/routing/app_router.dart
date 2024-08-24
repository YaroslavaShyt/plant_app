import 'package:flutter/material.dart';
import 'package:plant_app/app/routing/routes.dart';
import 'package:plant_app/app/screens/authentication/presentation/screens/auth_factory.dart';
import 'package:plant_app/app/screens/collections/presentation/collections_factory.dart';
import 'package:plant_app/app/screens/home/home_factory.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.routeAuth:
        return MaterialPageRoute(
            builder: (_) => _buildAuthSettings(routeSettings));
      case Routes.routeHome:
        return MaterialPageRoute(
            builder: (_) => _buildHomeSettings(routeSettings));
      case Routes.routeCollections:
        return MaterialPageRoute(
            builder: (_) => _buildCollectionsSettings(routeSettings));
      default:
        return MaterialPageRoute(builder: (_) => const Placeholder());
    }
  }

  Widget _buildAuthSettings(RouteSettings settings) {
    return AuthFactory.build();
  }

  Widget _buildHomeSettings(RouteSettings settings) {
    return HomeFactory.build();
  }

  Widget _buildCollectionsSettings(RouteSettings settings) {
    return CollectionsFactory.build();
  }
}
