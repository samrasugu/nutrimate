// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationSearchResponseImpl _$$LocationSearchResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationSearchResponseImpl(
      message: json['message'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LocationSearchResponseImplToJson(
        _$LocationSearchResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'location': instance.location,
    };
