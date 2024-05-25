import 'package:flutter/foundation.dart';
import 'package:nutrimate/infrastructure/repository/migrations.dart';
import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

Future<T> initDatabase<T extends DatabaseExecutor>(String dbName) async {
  final String dbPath = await getDatabasesPath();
  final String path = join(dbPath, dbName);
  return await openDatabase(
    path,
    version: migrations.length + 1,
    onCreate: onCreateCallback,
    onUpgrade: onUpgradeCallback,
  ) as T;
}

Future<void> onCreateCallback(Database db, int version) async {
  await migrate(db, 0, version);
}

Future<void> onUpgradeCallback(
  Database db,
  int oldVersion,
  int newVersion,
) async {
  await migrate(db, oldVersion, newVersion);
}

Future<void> migrate(
  Database db,
  int oldVersion,
  int newVersion,
) async {
  for (int i = oldVersion; i <= newVersion - 2; i++) {
    try {
      await db.execute(migrations[i]);
    } catch (e) {
      if (kDebugMode) {
        print('Migration failed: $e');
      }
    }
  }
}

Future<void> clearDatabaseHelper(String dbName) async {
  final String dbPath = await getDatabasesPath();
  final String path = join(dbPath, dbName);
  databaseFactoryFfi.deleteDatabase(path);
}
