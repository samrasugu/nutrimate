// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disease_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiseaseSearchResponseImpl _$$DiseaseSearchResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DiseaseSearchResponseImpl(
      message: json['message'] as String?,
      disease: json['disease'] == null
          ? null
          : Disease.fromJson(json['disease'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DiseaseSearchResponseImplToJson(
        _$DiseaseSearchResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'disease': instance.disease,
    };
