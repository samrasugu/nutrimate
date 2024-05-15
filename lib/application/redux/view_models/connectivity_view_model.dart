import 'package:async_redux/async_redux.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';

class ConnectivityViewModel extends Vm {
  final bool isConnected;
  final Wait wait;

  ConnectivityViewModel({required this.isConnected, required this.wait})
      : super(equals: <Object?>[isConnected, wait]);

  static ConnectivityViewModel fromStore(Store<AppState> store) {
    return ConnectivityViewModel(
      wait: store.state.wait ?? Wait(),
      isConnected: store.state.connectivityState?.isConnected ?? false,
    );
  }
}
