import 'package:get_it/get_it.dart';
import 'package:plant_app/app/services/database/object_box.dart';
import 'package:plant_app/domain/inavigation_util.dart';
import 'package:plant_app/app/routing/navigation_util.dart';

final diManager = GetIt.I;

late ObjectBox objectBox;

Future<void> initDIComponents() async {
  await _initDatabase();
}

Future<void> _initDatabase() async {
  //objectBox = await ObjectBox.create();
}

void _initNavigation(){
   final INavigationUtil navigationUtil = NavigationUtil();
    diManager.registerSingleton<INavigationUtil>(navigationUtil);
}
