import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_payload.freezed.dart';
part 'sign_up_payload.g.dart';

@freezed
class SignUpPayload with _$SignUpPayload {
  factory SignUpPayload({
    @JsonKey(name: 'firstname') String? firstname,
    @JsonKey(name: 'lastname') String? lastname,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'password') String? password,
  }) = _SignUpPayload;

  factory SignUpPayload.fromJson(Map<String, dynamic> json) =>
      _$SignUpPayloadFromJson(json);
}