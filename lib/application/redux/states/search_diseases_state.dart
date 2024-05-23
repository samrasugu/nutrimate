import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrimate/domain/core/entities/diseases/disease.dart';

part 'search_diseases_state.freezed.dart';
part 'search_diseases_state.g.dart';

@freezed
class SearchDiseasesState with _$SearchDiseasesState {
  factory SearchDiseasesState({
    List<Disease?>? searchedDiseases,
    List<Disease?>? selectedDiseases,
  }) = _SearchDiseasesState;

  factory SearchDiseasesState.fromJson(Map<String, dynamic> json) =>
      _$SearchDiseasesStateFromJson(json);

  factory SearchDiseasesState.initial() => SearchDiseasesState(
        searchedDiseases: <Disease>[],
        selectedDiseases: <Disease>[],
      );
}
