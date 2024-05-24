import 'package:async_redux/async_redux.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/application/redux/states/search_location_state.dart';
import 'package:nutrimate/domain/core/entities/location/location.dart';

class UpdateSearchLocationStateAction extends ReduxAction<AppState> {
  final List<Location?>? searchedLocations;
  final Location? selectedLocation;

  UpdateSearchLocationStateAction({
    this.searchedLocations,
    this.selectedLocation,
  });

  @override
  AppState reduce() {
    final SearchLocationState newSearchLocationState = SearchLocationState(
      searchedLocations: searchedLocations ??
          state.miscState?.searchLocationState?.searchedLocations,
      selectedLocation: selectedLocation ??
          state.miscState?.searchLocationState?.selectedLocation,
    );

    final AppState newState = state.copyWith(
      miscState: state.miscState
          ?.copyWith(searchLocationState: newSearchLocationState),
    );

    return newState;
  }
}
