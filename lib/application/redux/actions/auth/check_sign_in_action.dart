import 'package:async_redux/async_redux.dart';
import 'package:nutrimate/application/redux/actions/auth/update_initial_route_action.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/presentation/router/routes.dart';

class CheckSignInAction extends ReduxAction<AppState> {
  CheckSignInAction();

  @override
  Future<AppState?> reduce() async {
    final bool isSignedIn = state.userProfileState?.isSignedIn ?? false;

    String initialRoute = Routes.onboardingIntro;

    if (isSignedIn) {
      initialRoute = Routes.chat;
    }

    dispatch(UpdateInitialRouteAction(initialRoute: initialRoute));

    return null;
  }
}
