// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompleteProfileResponseImpl _$$CompleteProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CompleteProfileResponseImpl(
      message: json['message'] as String?,
      userProfile: json['profile'] == null
          ? null
          : UserProfile.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompleteProfileResponseImplToJson(
        _$CompleteProfileResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'profile': instance.userProfile,
    };
