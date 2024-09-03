import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbAdmin {
  static final DbAdmin _instance = DbAdmin._internal();
  Database? myDatabase;

  // Singleton
  static DbAdmin get db => _instance;

  DbAdmin._internal();

  Future<Database?> initDatabase() async {
    if (myDatabase != null) {
      return myDatabase;
    }

    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, "TaskDB.db");
    print("Creando base de datos !!!!");
    myDatabase = await openDatabase(
      path,
      version: 1,
      onOpen: (db) {},
      onCreate: (Database dbx, int version) async {
        await dbx.execute("CREATE TABLE TASK(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, description TEXT, status TEXT, otro TEXT)");
      },
    );
    return myDatabase;
  }
}
