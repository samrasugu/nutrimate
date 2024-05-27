import 'dart:convert';

import 'package:async_redux/async_redux.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:nutrimate/application/core/services/utils.dart';
import 'package:nutrimate/application/redux/actions/update_user_profile_state_action.dart';
import 'package:nutrimate/application/redux/flags/flags.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/domain/core/entities/complete_profile/complete_profile_response.dart';
import 'package:nutrimate/domain/core/entities/core/user_profile.dart';
import 'package:nutrimate/infrastructure/endpoints.dart';
import 'package:nutrimate/presentation/router/routes.dart';

class CompleteProfileAction extends ReduxAction<AppState> {
  CompleteProfileAction();

  @override
  void before() {
    super.before();
    dispatch(WaitAction<AppState>.add(submitProfileFlag));
  }

  @override
  void after() {
    super.after();
    dispatch(WaitAction<AppState>.remove(submitProfileFlag));
  }

  @override
  Future<AppState?> reduce() async {
    UserProfile userProfile = UserProfile(
      userId: state.userProfileState?.user?.id,
      age: state.completeProfileState?.age ?? '',
      gender: genderToJson(state.completeProfileState?.gender),
      weight: state.completeProfileState?.weight,
      height: state.completeProfileState?.height,
      illnesses: state.completeProfileState?.illnesses,
      foodPreferences: state.completeProfileState?.foodPreferences,
      location: state.completeProfileState?.location,
    );

    final Map<String, dynamic> payload = userProfile.toJson();

    final Response response = await post(
      Uri.parse(completeProfileUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(payload),
    );

    final Map<String, dynamic> responseBody = jsonDecode(response.body);

    final CompleteProfileResponse completeProfileResponse =
        CompleteProfileResponse.fromJson(responseBody);

    if (response.statusCode == 201) {
      if (kDebugMode) {
        print(completeProfileResponse);
      }

      final UserProfile userProfileRes = UserProfile.fromJson(
        completeProfileResponse.userProfile!.toJson(),
      );

      dispatch(
        UpdateUserProfileStateAction(
          userProfile: userProfileRes,
        ),
      );

      dispatch(
        NavigateAction<AppState>.pushNamedAndRemoveUntil(
          Routes.chat,
          (Route<dynamic> route) => false,
        ),
      );
    } else {
      throw UserException(completeProfileResponse.message);
    }

    return null;
  }
}
