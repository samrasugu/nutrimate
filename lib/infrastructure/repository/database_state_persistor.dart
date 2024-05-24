import 'package:async_redux/async_redux.dart';
import 'package:flutter/foundation.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/application/redux/states/complete_profile_state.dart';
import 'package:nutrimate/application/redux/states/connectivity_state.dart';
import 'package:nutrimate/application/redux/states/misc_state.dart';
import 'package:nutrimate/application/redux/states/user_profile_state.dart';
import 'package:nutrimate/infrastructure/repository/database_base.dart';
import 'package:nutrimate/infrastructure/repository/database_mobile.dart';
import 'package:nutrimate/infrastructure/repository/init_database.dart';
import 'package:sqflite/sqlite_api.dart';

class NutriMateStateDatabase implements PersistorPrinterDecorator<AppState> {
  NutriMateStateDatabase({
    Duration throttle = const Duration(seconds: 2),
    Duration saveDuration = Duration.zero,
    required this.databaseName,
  })  : _throttle = throttle,
        _saveDuration = saveDuration;

  final String databaseName;

  final Duration _saveDuration;
  final Duration _throttle;

  @override
  Future<void> deleteState() async {
    // Delete the state from the database
    await NutriMateDatabaseMobile<Database>(
      initDatabase: InitDatabase<Database>(dbName: this.databaseName),
    ).clearDatabase();
  }

  @override
  Future<void> persistDifference({
    AppState? lastPersistedState,
    required AppState newState,
  }) async {
    await Future<dynamic>.delayed(saveDuration);

    // Persist the state to the database
    if (lastPersistedState == null ||
        lastPersistedState.userProfileState != newState.userProfileState ||
        lastPersistedState.completeProfileState !=
            newState.completeProfileState ||
        lastPersistedState.connectivityState != newState.connectivityState ||
        lastPersistedState.miscState != newState.miscState) {
      await persistState(
        newState,
        NutriMateDatabaseMobile<Database>(
          initDatabase: InitDatabase<Database>(dbName: this.databaseName),
        ),
      );
    }
  }

  /// check if the state in database is empty
  /// if empty, return the initial state(null)
  /// else, return the state from the database
  @override
  Future<AppState> readState() async {
    if (await NutriMateDatabaseMobile<Database>(
      initDatabase: InitDatabase<Database>(dbName: this.databaseName),
    ).isDatabaseEmpty()) {
      return AppState.initial();
    } else {
      return retrievState(
        NutriMateDatabaseMobile<Database>(
          initDatabase: InitDatabase<Database>(dbName: this.databaseName),
        ),
      );
    }
  }

  @override
  Future<void> saveInitialState(AppState state) async => persistDifference(
        newState: state,
      );

  @override
  Duration get throttle => _throttle;

  Duration get saveDuration => _saveDuration;

  Future<void> init() async {
    await NutriMateDatabaseMobile<Database>(
      initDatabase: InitDatabase<Database>(dbName: this.databaseName),
    ).database;

    // check for missing tables and create them
    for (Tables table in Tables.values) {
      final bool exists = await NutriMateDatabaseMobile<Database>(
        initDatabase: InitDatabase<Database>(dbName: this.databaseName),
      ).tableExists(table.name);
      if (!exists) {
        await NutriMateDatabaseMobile<Database>(
          initDatabase: InitDatabase<Database>(dbName: this.databaseName),
        ).createTable(table.name);
      }
    }
  }

  // persist the state to the database
  Future<void> persistState(
    AppState newState,
    NutriMateDatabaseBase<dynamic> database,
  ) async {
    try {
      // user profile state
      await database.saveState(
        table: Tables.userProfileState,
        data: newState.userProfileState!.toJson(),
      );

      // complete profile state
      await database.saveState(
        table: Tables.completeProfileState,
        data: newState.completeProfileState!.toJson(),
      );

      // connectivity state
      await database.saveState(
        table: Tables.connectivityState,
        data: newState.connectivityState!.toJson(),
      );

      // misc state
      await database.saveState(
        table: Tables.miscState,
        data: newState.miscState!.toJson(),
      );

      if (kDebugMode) {
        print('State saved');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error saving state: $e');
      }
    }
  }
}

Future<AppState> retrievState(
  NutriMateDatabaseBase<dynamic> database,
) async {
  try {
    return AppState().copyWith(
      userProfileState: UserProfileState.fromJson(
        await database.retrieveState(Tables.userProfileState),
      ),
      completeProfileState: CompleteProfileState.fromJson(
        await database.retrieveState(Tables.completeProfileState),
      ),
      connectivityState: ConnectivityState.fromJson(
        await database.retrieveState(Tables.connectivityState),
      ),
      miscState: MiscState.fromJson(
        await database.retrieveState(Tables.miscState),
      ),
      wait: Wait(),
    );
  } catch (e) {
    if (kDebugMode) {
      print('Error retrieving state: $e');
    }
    return AppState.initial();
  }
}
