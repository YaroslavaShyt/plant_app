import 'package:plant_app/app/services/idatabase_service.dart';
import 'package:plant_app/app/utils/database.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseService implements IDatabaseService {
  DatabaseService({required DatabaseUtil databaseUtil})
      : _databaseUtil = databaseUtil;

  final DatabaseUtil _databaseUtil;

  @override
  Future<void> create({required String tableName}) async{
    final Database db = await _databaseUtil.database;
    db.execute("""CREATE TABLE IF NOT EXISTS $tableName(
                  "id" INTEGER PRIMARY KEY,
                  "title" TEXT NOT NULL,
                  "created_at" INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as integer)),
                  "updated_at" INTEGER
                    );""");
  }

  @override
  Future<void> delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<void> read() {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  Future<void> update() {
    // TODO: implement update
    throw UnimplementedError();
  }
}
