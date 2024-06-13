import 'package:async_redux/async_redux.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';

class LogoutAction extends ReduxAction<AppState> {
  LogoutAction();

  @override
  Future<void> before() async {
    while (true) {
      if (state.wait?.isWaitingAny ?? false) {
        await Future<void>.delayed(const Duration(milliseconds: 500));
      } else {
        break;
      }
    }

    return super.before();
  }

  @override
  AppState? reduce() {
    final AppState newState = AppState.initial();

    return newState;
  }
}
