// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_profile_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompleteProfileStateImpl _$$CompleteProfileStateImplFromJson(
        Map<String, dynamic> json) =>
    _$CompleteProfileStateImpl(
      initialRoute: json['initialRoute'] as String? ?? '/setBasicInfo',
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      age: json['age'] as String?,
      weight: json['weight'] as String?,
      height: json['height'] as String?,
      illnesses: (json['illnesses'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      foodPreferences: (json['foodPreferences'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      location: json['location'] as String?,
    );

Map<String, dynamic> _$$CompleteProfileStateImplToJson(
        _$CompleteProfileStateImpl instance) =>
    <String, dynamic>{
      'initialRoute': instance.initialRoute,
      'gender': _$GenderEnumMap[instance.gender],
      'age': instance.age,
      'weight': instance.weight,
      'height': instance.height,
      'illnesses': instance.illnesses,
      'foodPreferences': instance.foodPreferences,
      'location': instance.location,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
  Gender.unknown: 'unknown',
};
