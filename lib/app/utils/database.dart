import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseUtil {
  Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await _initialize();
    return _database!;
  }

  Future<String> get fullPath async {
    const name = 'plants.db';
    final path = await getDatabasesPath();
    return join(path, name);
  }

  Future<Database> _initialize() async {
    final path = await fullPath;
    Database db = await openDatabase(
      path,
      version: 1,
      singleInstance: true,
    );
    return db;
  }
}
