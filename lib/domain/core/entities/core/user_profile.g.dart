// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      id: json['id'] as String?,
      age: json['age'] as String?,
      gender: json['gender'] as String?,
      illnesses: (json['illnesses'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      weight: json['weight'] as String?,
      height: json['height'] as String?,
      location: json['location'] as String?,
      foodPreferences: (json['food_preferences'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      userId: json['user_id'] as String?,
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'age': instance.age,
      'gender': instance.gender,
      'illnesses': instance.illnesses,
      'weight': instance.weight,
      'height': instance.height,
      'location': instance.location,
      'food_preferences': instance.foodPreferences,
      'user_id': instance.userId,
    };
