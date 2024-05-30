import 'package:async_redux/async_redux.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';

class AppStateViewModel extends Vm {
  final AppState appState;

  AppStateViewModel({
    required this.appState,
  }) : super(equals: <Object?>[appState]);

  static AppStateViewModel fromStore(Store<AppState> store) {
    return AppStateViewModel(
      appState: store.state,
    );
  }
}
