import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'firstname') String? firstname,
    @JsonKey(name: 'lastname') String? lastname,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'password') String? password,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.initial() => User(
        id: '',
        firstname: '',
        email: '',
        password: '',
      );
}
