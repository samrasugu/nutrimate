import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrimate/domain/core/entities/sign_up/user_signup_response.dart';

part 'sign_up_response.freezed.dart';
part 'sign_up_response.g.dart';

@freezed
class SignUpResponse with _$SignUpResponse {
  factory SignUpResponse({
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'user') UserSignUpResponse? userSignUpResponse,
  }) = _SignUpResponse;

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}
