import 'package:async_redux/async_redux.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/application/redux/states/misc_state.dart';

class UpdateInitialRouteAction extends ReduxAction<AppState> {
  UpdateInitialRouteAction({required this.initialRoute});

  final String initialRoute;

  @override
  AppState reduce() {
    final MiscState? miscState = state.miscState?.copyWith(
      initialRoute: initialRoute,
    );

    return state.copyWith(
      miscState: miscState ?? state.miscState,
    );
  }
}
