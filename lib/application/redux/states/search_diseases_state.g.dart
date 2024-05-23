// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_diseases_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchDiseasesStateImpl _$$SearchDiseasesStateImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchDiseasesStateImpl(
      searchedDiseases: (json['searchedDiseases'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Disease.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedDiseases: (json['selectedDiseases'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Disease.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchDiseasesStateImplToJson(
        _$SearchDiseasesStateImpl instance) =>
    <String, dynamic>{
      'searchedDiseases': instance.searchedDiseases,
      'selectedDiseases': instance.selectedDiseases,
    };
