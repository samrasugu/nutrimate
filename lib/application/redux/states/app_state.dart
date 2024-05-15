import 'package:async_redux/async_redux.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrimate/application/redux/states/complete_profile_state.dart';
import 'package:nutrimate/application/redux/states/connectivity_state.dart';
import 'package:nutrimate/application/redux/states/misc_state.dart';
import 'package:nutrimate/application/redux/states/user_profile_state.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState{
  factory AppState({
    UserProfileState? userProfileState,
    CompleteProfileState? completeProfileState,
    ConnectivityState? connectivityState,
    MiscState? miscState,
    @JsonKey(includeFromJson: false, includeToJson: false) Wait? wait,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);

  factory AppState.initial() => AppState(
    userProfileState: UserProfileState.initial(),
    completeProfileState: CompleteProfileState.initial(),
    connectivityState: ConnectivityState.initial(),
    miscState: MiscState.initial(),
    wait: Wait(),
  );
}