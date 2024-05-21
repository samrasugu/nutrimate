// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpResponseImpl _$$SignUpResponseImplFromJson(Map<String, dynamic> json) =>
    _$SignUpResponseImpl(
      message: json['message'] as String?,
      userSignUpResponse: json['user'] == null
          ? null
          : UserSignUpResponse.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SignUpResponseImplToJson(
        _$SignUpResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.userSignUpResponse,
    };
