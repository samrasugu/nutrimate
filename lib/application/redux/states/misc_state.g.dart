// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misc_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiscStateImpl _$$MiscStateImplFromJson(Map<String, dynamic> json) =>
    _$MiscStateImpl(
      initialRoute: json['initialRoute'] as String? ?? '/onboardingIntro',
      invalidCredentials: json['invalidCredentials'] as bool?,
    );

Map<String, dynamic> _$$MiscStateImplToJson(_$MiscStateImpl instance) =>
    <String, dynamic>{
      'initialRoute': instance.initialRoute,
      'invalidCredentials': instance.invalidCredentials,
    };
