import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrimate/domain/core/entities/location/location.dart';

part 'search_location_state.freezed.dart';
part 'search_location_state.g.dart';

@freezed
class SearchLocationState with _$SearchLocationState {
  factory SearchLocationState({
    List<Location?>? searchedLocations,
    Location? selectedLocation,
  }) = _SearchLocationState;

  factory SearchLocationState.fromJson(Map<String, dynamic> json) =>
      _$SearchLocationStateFromJson(json);

  factory SearchLocationState.initial() => SearchLocationState(
        searchedLocations: <Location>[],
        selectedLocation: Location.initial(),
      );
}
