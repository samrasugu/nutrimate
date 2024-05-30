import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrimate/domain/core/entities/core/user.dart';
import 'package:nutrimate/domain/core/entities/core/user_profile.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  factory LoginResponse({
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'user') User? user,
    @JsonKey(name: 'profile') UserProfile? userProfile,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
