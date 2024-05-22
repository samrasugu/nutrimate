import 'package:async_redux/async_redux.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';

class LoginViewModel extends Vm {
  final Wait? wait;
  final bool? invalidCredentials;

  LoginViewModel({
    required this.wait,
    required this.invalidCredentials,
  });

  static LoginViewModel fromState(AppState state) {
    return LoginViewModel(
      wait: state.wait,
      invalidCredentials: state.miscState?.invalidCredentials,
    );
  }
}
