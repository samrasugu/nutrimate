// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misc_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiscStateImpl _$$MiscStateImplFromJson(Map<String, dynamic> json) =>
    _$MiscStateImpl(
      initialRoute: json['initialRoute'] as String? ?? '/onboardingIntro',
      invalidCredentials: json['invalidCredentials'] as bool?,
      searchDiseasesState: json['searchDiseasesState'] == null
          ? null
          : SearchDiseasesState.fromJson(
              json['searchDiseasesState'] as Map<String, dynamic>),
      searchLocationState: json['searchLocationState'] == null
          ? null
          : SearchLocationState.fromJson(
              json['searchLocationState'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MiscStateImplToJson(_$MiscStateImpl instance) =>
    <String, dynamic>{
      'initialRoute': instance.initialRoute,
      'invalidCredentials': instance.invalidCredentials,
      'searchDiseasesState': instance.searchDiseasesState,
      'searchLocationState': instance.searchLocationState,
    };
