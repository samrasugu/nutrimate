// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_location_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchLocationStateImpl _$$SearchLocationStateImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchLocationStateImpl(
      searchedLocations: (json['searchedLocations'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Location.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedLocation: json['selectedLocation'] == null
          ? null
          : Location.fromJson(json['selectedLocation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchLocationStateImplToJson(
        _$SearchLocationStateImpl instance) =>
    <String, dynamic>{
      'searchedLocations': instance.searchedLocations,
      'selectedLocation': instance.selectedLocation,
    };
