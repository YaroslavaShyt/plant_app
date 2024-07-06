import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:plant_app/app/utils/di_manager.dart';
import 'package:plant_app/plant_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await dotenv.load(fileName: ".env");
  await initDIComponents();
  runApp(const PlantApp());
}
