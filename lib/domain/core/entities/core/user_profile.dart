import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  factory UserProfile({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'age') String? age,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'illnesses') List<String>? illnesses,
    @JsonKey(name: 'weight') String? weight,
    @JsonKey(name: 'height') String? height,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'food_preferences') List<String>? foodPreferences,
    @JsonKey(name: 'user_id') String? userId,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);

  factory UserProfile.initial() => UserProfile(
        id: '',
        age: '',
        gender: '',
        illnesses: <String>[],
        weight: '',
        height: '',
        location: '',
        foodPreferences: <String>[],
        userId: '',
      );
}
