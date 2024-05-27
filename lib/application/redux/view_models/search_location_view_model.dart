import 'package:async_redux/async_redux.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/domain/core/entities/core/user_profile.dart';
import 'package:nutrimate/domain/core/entities/location/location.dart';

class SearchLocationViewModel extends Vm {
  final List<Location?>? searchedLocations;
  final Location? selectedLocation;
  final UserProfile? userProfile;
  final Wait? wait;

  SearchLocationViewModel({
    this.searchedLocations,
    this.selectedLocation,
    this.userProfile,
    this.wait,
  }) : super(
          equals: <Object?>[
            searchedLocations,
            selectedLocation,
            userProfile,
            wait,
          ],
        );

  factory SearchLocationViewModel.fromStore(Store<AppState> store) {
    return SearchLocationViewModel(
      searchedLocations:
          store.state.miscState?.searchLocationState?.searchedLocations,
      selectedLocation:
          store.state.miscState?.searchLocationState?.selectedLocation,
      userProfile: store.state.userProfileState?.userProfile,
      wait: store.state.wait,
    );
  }
}
