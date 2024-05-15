// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpPayloadImpl _$$SignUpPayloadImplFromJson(Map<String, dynamic> json) =>
    _$SignUpPayloadImpl(
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$SignUpPayloadImplToJson(_$SignUpPayloadImpl instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'password': instance.password,
    };
