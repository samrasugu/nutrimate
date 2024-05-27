import 'package:async_redux/async_redux.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';

class CompleteProfileViewModel extends Vm {
  final Wait? wait;

  CompleteProfileViewModel({
    required this.wait,
  });

  static CompleteProfileViewModel fromState(AppState state) {
    return CompleteProfileViewModel(
      wait: state.wait,
    );
  }
}
