import 'package:async_redux/async_redux.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/application/redux/states/search_diseases_state.dart';
import 'package:nutrimate/domain/core/entities/diseases/disease.dart';

class UpdateSearchDiseasesStateAction extends ReduxAction<AppState> {
  final List<Disease?>? searchedDiseases;
  final List<Disease?>? selectedDiseases;

  UpdateSearchDiseasesStateAction({
    this.searchedDiseases,
    this.selectedDiseases,
  });

  @override
  AppState reduce() {
    final SearchDiseasesState newSearchedDiseasesState = SearchDiseasesState(
      searchedDiseases: searchedDiseases ??
          state.miscState?.searchDiseasesState?.searchedDiseases,
      selectedDiseases: selectedDiseases ??
          state.miscState?.searchDiseasesState?.selectedDiseases,
    );

    final AppState newState = state.copyWith(
      miscState: state.miscState?.copyWith(
        searchDiseasesState: newSearchedDiseasesState,
      ),
    );

    return newState;
  }
}
