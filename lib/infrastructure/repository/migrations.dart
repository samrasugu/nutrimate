import 'package:nutrimate/infrastructure/repository/database_base.dart';

final List<String> migrations = <String>[
  '''CREATE TABLE IF NOT EXISTS ${Tables.userProfileState.name}(id INTEGER PRIMARY KEY, ${Tables.userProfileState.name} TEXT)''',
  '''CREATE TABLE IF NOT EXISTS ${Tables.completeProfileState.name}(id INTEGER PRIMARY KEY, ${Tables.completeProfileState.name} TEXT)''',
  '''CREATE TABLE IF NOT EXISTS ${Tables.connectivityState.name}(id INTEGER PRIMARY KEY, ${Tables.connectivityState.name} TEXT)''',
  '''CREATE TABLE IF NOT EXISTS ${Tables.chatState.name}(id INTEGER PRIMARY KEY, ${Tables.chatState.name} TEXT)''',
  '''CREATE TABLE IF NOT EXISTS ${Tables.miscState.name}(id INTEGER PRIMARY KEY, ${Tables.miscState.name} TEXT)''',
];
