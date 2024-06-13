import 'dart:convert';

import 'package:async_redux/async_redux.dart';
import 'package:http/http.dart';
import 'package:nutrimate/application/redux/actions/diseases/update_search_diseases_action.dart';
import 'package:nutrimate/application/redux/flags/flags.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/domain/core/entities/diseases/disease.dart';
import 'package:nutrimate/domain/core/entities/diseases/disease_search_response.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
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

      final List<Disease?> searchedDiseases =
          diseaseSearchResponse.diseases ?? <Disease?>[];

      dispatch(
        UpdateSearchDiseasesStateAction(
          searchedDiseases: searchedDiseases,
        ),
      );
    } else if (response.statusCode == 404) {
      throw const UserException(diseaseNotFoundText);
    } else {
      throw const UserException(unknownErrorText);
    }

    return null;
  }
}
