import 'package:get_it/get_it.dart';
import 'package:plant_app/app/services/database/object_box.dart';

final diManager = GetIt.I;

late ObjectBox objectBox;

Future<void> initDIComponents() async {
  await _initDatabase();
}

Future<void> _initDatabase() async {
  //objectBox = await ObjectBox.create();
}
