// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationSearchResponseImpl _$$LocationSearchResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationSearchResponseImpl(
      message: json['message'] as String?,
      locations: (json['locations'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Location.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LocationSearchResponseImplToJson(
        _$LocationSearchResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'locations': instance.locations,
    };
