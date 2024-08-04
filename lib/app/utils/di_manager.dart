import 'package:get_it/get_it.dart';
import 'package:plant_app/domain/inavigation_util.dart';
import 'package:plant_app/app/routing/navigation_util.dart';

final diManager = GetIt.I;


Future<void> initDIComponents() async {
 _initNavigation();
}

void _initNavigation(){
   final INavigationUtil navigationUtil = NavigationUtil();
    diManager.registerSingleton<INavigationUtil>(navigationUtil);
}
