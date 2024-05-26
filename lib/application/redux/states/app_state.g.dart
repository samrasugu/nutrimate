// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppStateImpl _$$AppStateImplFromJson(Map<String, dynamic> json) =>
    _$AppStateImpl(
      userProfileState: json['userProfileState'] == null
          ? null
          : UserProfileState.fromJson(
              json['userProfileState'] as Map<String, dynamic>),
      completeProfileState: json['completeProfileState'] == null
          ? null
          : CompleteProfileState.fromJson(
              json['completeProfileState'] as Map<String, dynamic>),
      connectivityState: json['connectivityState'] == null
          ? null
          : ConnectivityState.fromJson(
              json['connectivityState'] as Map<String, dynamic>),
      chatState: json['chatState'] == null
          ? null
          : ChatState.fromJson(json['chatState'] as Map<String, dynamic>),
      miscState: json['miscState'] == null
          ? null
          : MiscState.fromJson(json['miscState'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppStateImplToJson(_$AppStateImpl instance) =>
    <String, dynamic>{
      'userProfileState': instance.userProfileState,
      'completeProfileState': instance.completeProfileState,
      'connectivityState': instance.connectivityState,
      'chatState': instance.chatState,
      'miscState': instance.miscState,
    };
