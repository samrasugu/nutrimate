import 'package:async_redux/async_redux.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/domain/core/entities/diseases/disease.dart';

class SearchDiseasesViewModel extends Vm {
  final List<Disease?>? searchedDiseases;
  final List<Disease?>? selectedDiseases;
  final Wait? wait;

  SearchDiseasesViewModel({
    this.searchedDiseases,
    this.selectedDiseases,
    this.wait,
  }) : super(
          equals: <Object?>[
            searchedDiseases,
            selectedDiseases,
            wait,
          ],
        );

  factory SearchDiseasesViewModel.fromStore(Store<AppState> store) {
    return SearchDiseasesViewModel(
      searchedDiseases:
          store.state.miscState?.searchDiseasesState?.searchedDiseases,
      selectedDiseases:
          store.state.miscState?.searchDiseasesState?.selectedDiseases,
      wait: store.state.wait,
    );
  }
}
