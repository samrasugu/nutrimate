// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disease_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiseaseSearchResponseImpl _$$DiseaseSearchResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DiseaseSearchResponseImpl(
      message: json['message'] as String?,
      diseases: (json['diseases'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Disease.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DiseaseSearchResponseImplToJson(
        _$DiseaseSearchResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'diseases': instance.diseases,
    };
