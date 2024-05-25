// helper class to interact with the database
abstract class NutriMateDatabaseBase<T> {
  Future<T> get database;

  Future<void> saveState({
    required Tables table,
    required Map<String, dynamic> data,
  });

  Future<int> countTableRecords(String table);

  Future<bool> isDatabaseEmpty();

  Future<Map<String, dynamic>> retrieveState(Tables tables);

  Future<void> clearDatabase();
}

enum Tables {
  userProfileState,
  completeProfileState,
  connectivityState,
  miscState,
  unknown,
}

extension TablesEx on Tables {
  String get name {
    switch (this) {
      case Tables.userProfileState:
        return 'userProfileState';
      case Tables.completeProfileState:
        return 'completeProfileState';
      case Tables.connectivityState:
        return 'connectivityState';
      case Tables.miscState:
        return 'miscState';
      default:
        return 'unknown';
    }
  }
}
