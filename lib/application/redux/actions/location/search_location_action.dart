import 'dart:convert';

import 'package:async_redux/async_redux.dart';
import 'package:http/http.dart';
import 'package:nutrimate/application/redux/actions/location/update_search_location_state_action.dart';
import 'package:nutrimate/application/redux/flags/flags.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/domain/core/entities/location/location.dart';
import 'package:nutrimate/domain/core/entities/location/location_search_response.dart';
import 'package:nutrimate/infrastructure/endpoints.dart';

class SearchLocationAction extends ReduxAction<AppState> {
  final String query;

  SearchLocationAction({required this.query});

  @override
  void before() {
    dispatch(WaitAction<AppState>.add(searchLocationFlag));
  }

  @override
  void after() {
    dispatch(WaitAction<AppState>.remove(searchLocationFlag));
  }

  @override
  Future<AppState?> reduce() async {
    final Map<String, dynamic> searchVariables = <String, dynamic>{
      'name': query,
    };

    final Response response = await post(
      Uri.parse(searchLocationUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(searchVariables),
    );

    if (response.statusCode == 200) {
      final LocationSearchResponse locationSearchResponse =
          LocationSearchResponse.fromJson(jsonDecode(response.body));

      Location location = Location(
        id: locationSearchResponse.location?.id,
        name: locationSearchResponse.location?.name,
        description: locationSearchResponse.location?.description,
      );

      dispatch(
        UpdateSearchLocationStateAction(
          searchedLocations: <Location?>[location],
        ),
      );

      return state;
    }

    return null;
  }
}
