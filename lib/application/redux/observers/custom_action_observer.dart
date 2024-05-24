import 'package:async_redux/async_redux.dart';
import 'package:flutter/foundation.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';

class CustomActionOnbserver implements ActionObserver<AppState> {
  @override
  void observe(
    ReduxAction<dynamic> action,
    int dispatchCount, {
    required bool ini,
  }) {
    if (kDebugMode) {
      print('Action: $action');
    }
  }
}
