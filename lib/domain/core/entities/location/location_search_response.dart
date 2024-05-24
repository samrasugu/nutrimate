import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrimate/domain/core/entities/location/location.dart';

part 'location_search_response.freezed.dart';
part 'location_search_response.g.dart';

@freezed
class LocationSearchResponse with _$LocationSearchResponse {
  factory LocationSearchResponse({
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'location') Location? location,
  }) = _LocationSearchResponse;

  factory LocationSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationSearchResponseFromJson(json);

  factory LocationSearchResponse.initial() => LocationSearchResponse(
        message: '',
        location: Location.initial(),
      );
}