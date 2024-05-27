import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrimate/domain/core/entities/core/user_profile.dart';

part 'complete_profile_response.freezed.dart';
part 'complete_profile_response.g.dart';

@freezed
class CompleteProfileResponse with _$CompleteProfileResponse {
  factory CompleteProfileResponse({
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'profile') UserProfile? userProfile,
  }) = _CompleteProfileResponse;

  factory CompleteProfileResponse.fromJson(Map<String, dynamic> json) => _$CompleteProfileResponseFromJson(json);

  factory CompleteProfileResponse.initial() => CompleteProfileResponse(
        message: '',
        userProfile: UserProfile.initial(),
      );
}