import 'package:async_redux/async_redux.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/domain/core/entities/core/user.dart';
import 'package:nutrimate/domain/core/entities/core/user_profile.dart';

class UpdateUserProfileStateAction extends ReduxAction<AppState> {
  UpdateUserProfileStateAction({
    this.userProfile,
    this.user,
    this.isSignedIn,
  });

  final UserProfile? userProfile;
  final User? user;
  final bool? isSignedIn;

  @override
  AppState? reduce() {
    final AppState updatedAppState = state.copyWith(
      userProfileState: state.userProfileState?.copyWith(
        userProfile: userProfile,
        user: user,
        isSignedIn: isSignedIn,
      ),
    );
    return updatedAppState;
  }
}
