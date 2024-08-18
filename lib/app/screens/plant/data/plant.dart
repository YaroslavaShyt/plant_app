import 'package:plant_app/app/screens/plant/domain/iplant.dart';

class Plant implements IPlant {
  Plant({required this.title});
  @override
  final String title;
}
