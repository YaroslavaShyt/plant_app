import 'package:plant_app/app/services/database/idatabase_service.dart';
import 'package:plant_app/app/services/database/object_box.dart';

class DatabaseService implements IDatabaseService {
  DatabaseService({required ObjectBox objectBox})
      : _objectBox = objectBox;

  final ObjectBox _objectBox;
  
  @override
  ObjectBox get database => _objectBox;
}
