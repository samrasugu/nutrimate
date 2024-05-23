import 'dart:convert';

import 'package:async_redux/async_redux.dart';
import 'package:http/http.dart';
import 'package:nutrimate/application/redux/actions/diseases/update_search_diseases_action.dart';
import 'package:nutrimate/application/redux/flags/flags.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/domain/core/entities/diseases/disease.dart';
import 'package:nutrimate/domain/core/entities/diseases/disease_search_response.dart';
import 'package:nutrimate/infrastructure/endpoints.dart';

class SearchDiseasesAction extends ReduxAction<AppState> {
  final String query;

  SearchDiseasesAction({
    required this.query,
  });

  @override
  void before() {
    dispatch(WaitAction<AppState>.add(searchDiseasesFlag));
  }

  @override
  void after() {
    dispatch(WaitAction<AppState>.remove(searchDiseasesFlag));
  }

  @override
  Future<AppState?> reduce() async {
    final Map<String, dynamic> searchVariables = <String, dynamic>{
      'disease': query,
    };

    final Response response = await post(
      Uri.parse(searchDiseasesUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(searchVariables),
    );

    if (response.statusCode == 200) {
      final DiseaseSearchResponse diseaseSearchResponse =
          DiseaseSearchResponse.fromJson(jsonDecode(response.body));

      Disease disease = Disease(
        id: diseaseSearchResponse.disease?.id,
        name: diseaseSearchResponse.disease?.name,
        description: diseaseSearchResponse.disease?.description,
      );

      dispatch(
        UpdateSearchDiseasesStateAction(
          searchedDiseases: <Disease?>[disease],
        ),
      );

      return state.copyWith(
        miscState: state.miscState?.copyWith(
          searchDiseasesState: state.miscState?.searchDiseasesState?.copyWith(
            searchedDiseases: <Disease?>[disease],
          ),
        ),
      );
    }

    return null;
  }
}
