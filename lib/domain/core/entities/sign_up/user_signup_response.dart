import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_signup_response.freezed.dart';
part 'user_signup_response.g.dart';

@freezed
class UserSignUpResponse with _$UserSignUpResponse {
  factory UserSignUpResponse({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'firstname') String? firstName,
    @JsonKey(name: 'lastname') String? lastName,
    @JsonKey(name: 'email') String? email,
  }) = _UserSignUpResponse;

  factory UserSignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$UserSignUpResponseFromJson(json);
}
