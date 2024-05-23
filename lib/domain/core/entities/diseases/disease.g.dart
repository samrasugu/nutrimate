// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disease.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiseaseImpl _$$DiseaseImplFromJson(Map<String, dynamic> json) =>
    _$DiseaseImpl(
      id: json['disease_id'] as String?,
      name: json['disease_name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$DiseaseImplToJson(_$DiseaseImpl instance) =>
    <String, dynamic>{
      'disease_id': instance.id,
      'disease_name': instance.name,
      'description': instance.description,
    };
