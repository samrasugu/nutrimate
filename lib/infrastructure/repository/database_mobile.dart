import 'dart:convert';

import 'package:nutrimate/domain/core/database_strings.dart';
import 'package:nutrimate/infrastructure/repository/database_base.dart';
import 'package:nutrimate/infrastructure/repository/init_database.dart';
import 'package:nutrimate/infrastructure/repository/sqlite.dart';
import 'package:sqflite/sqflite.dart';

class NutriMateDatabaseMobile<T extends DatabaseExecutor>
    implements NutriMateDatabaseBase<T> {
  NutriMateDatabaseMobile({this.initDatabase});

  final InitDatabase<T>? initDatabase;

  @override
  Future<T> get database async {
    return initDatabase!.database();
  }

  // clear the database
  @override
  Future<void> clearDatabase() => clearDatabaseHelper(
        this.initDatabase!.dbName,
      );

  @override
  Future<int> countTableRecords(String table) async {
    final T db = await this.database;
    final int? records = Sqflite.firstIntValue(
      await db.rawQuery('SELECT COUNT(*) FROM $table'),
    );
    return Future<int>.value(records);
  }

  @override
  Future<bool> isDatabaseEmpty() async {
    final int t1 = await countTableRecords(Tables.userProfileState.name);
    final int t2 = await countTableRecords(Tables.completeProfileState.name);
    final int t3 = await countTableRecords(Tables.connectivityState.name);
    final int t5 = await countTableRecords(Tables.chatState.name);
    final int t4 = await countTableRecords(Tables.miscState.name);

    final int counts = t1 + t2 + t3 + t4 + t5;

    if (counts > 0) {
      return false;
    }
    return true;
  }

  Future<Map<String, dynamic>> retrieverWorker(Tables table) async {
    final T db = await this.database;
    final List<Map<String, dynamic>> states = await db
        .rawQuery('SELECT * FROM ${table.name} ORDER BY id DESC LIMIT 1');
    final Map<String, dynamic> state = Map<String, dynamic>.from(states.first);

    return state;
  }

  // get current state of the database
  @override
  Future<Map<String, dynamic>> retrieveState(Tables table) async {
    final T db = await this.database;

    if (table != Tables.unknown) {
      final Map<String, dynamic> localState = await retrieverWorker(table);

      final dynamic state = json.decode(localState[table.name] as String);

      return state as Map<String, dynamic>;
    }

    // other state objects that do not require custom mapping i.e not in the enum
    final List<Map<dynamic, dynamic>> states = await db
        .rawQuery('SELECT * FROM ${table.name} ORDER BY id DESC LIMIT 1');

    return states.first as Map<String, dynamic>;
  }

  // save state to the database
  @override
  Future<void> saveState({
    required Tables table,
    required Map<String, dynamic> data,
  }) async {
    final T db = await this.database;
    final String dataString = jsonEncode(data);

    final String tableName = table.name;

    await db.rawInsert(
      'INSERT INTO $tableName($tableName) VALUES(?)',
      <dynamic>[dataString],
    );
    return;
  }

  // check if table exists
  Future<bool> tableExists(String tableName) async {
    final T db = await this.database;
    final List<Map<dynamic, Object?>> tables = await db.rawQuery(
      '''SELECT name FROM $masterSchemaTable WHERE type='table' AND name='$tableName' ''',
    );

    return tables.isNotEmpty;
  }

  // create table if it does not exist
  Future<void> createTable(String tableName) async {
    final T db = await this.database;
    await db.execute(
      '''CREATE TABLE IF NOT EXISTS $tableName(id INTEGER PRIMARY KEY, $tableName TEXT)''',
    );
  }
}
