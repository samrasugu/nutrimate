// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_signup_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSignUpResponseImpl _$$UserSignUpResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserSignUpResponseImpl(
      id: json['id'] as String?,
      firstName: json['firstname'] as String?,
      lastName: json['lastname'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$UserSignUpResponseImplToJson(
        _$UserSignUpResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstName,
      'lastname': instance.lastName,
      'email': instance.email,
    };
