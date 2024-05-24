import 'package:nutrimate/infrastructure/repository/sqlite.dart';
import 'package:sqflite/sqflite.dart';

abstract class NutriMateStateDatabase extends Database {}

class InitDatabase<T extends DatabaseExecutor> extends InitializeDBHelper<T> {
  InitDatabase({required super.dbName});
}

abstract class InitializeDBHelper<T extends DatabaseExecutor> {
  final String dbName;

  InitializeDBHelper({required this.dbName});

  Future<T> database({T? preInitializedDatabase}) async {
    return preInitializedDatabase != null
        ? Future<T>.value(preInitializedDatabase)
        : initDatabase<T>(dbName);
  }
}
