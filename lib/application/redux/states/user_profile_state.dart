import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrimate/domain/core/entities/core/user.dart';
import 'package:nutrimate/domain/core/entities/core/user_profile.dart';

part 'user_profile_state.freezed.dart';
part 'user_profile_state.g.dart';

@freezed
class UserProfileState with _$UserProfileState{
  factory UserProfileState({
    UserProfile? userProfile,
    User? user,
    bool? isSignedIn,
  }) = _UserProfileState;

  factory UserProfileState.fromJson(Map<String, dynamic> json) => _$UserProfileStateFromJson(json);

  factory UserProfileState.initial() => UserProfileState(
    userProfile: UserProfile.initial(),
    user: User.initial(),
    isSignedIn: false,
  );
}