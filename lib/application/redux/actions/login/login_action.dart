import 'dart:convert';

import 'package:async_redux/async_redux.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:nutrimate/application/redux/actions/update_user_profile_state_action.dart';
import 'package:nutrimate/application/redux/flags/flags.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/domain/core/entities/login/login_payload.dart';
import 'package:nutrimate/domain/core/entities/login/login_response.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
import 'package:nutrimate/infrastructure/endpoints.dart';
import 'package:nutrimate/presentation/router/routes.dart';

class LoginAction extends ReduxAction<AppState> {
  final LoginPayload loginPayload;

  LoginAction({
    required this.loginPayload,
  });

  @override
  void before() {
    super.before();
    dispatch(WaitAction<AppState>.add(loginFlag));
  }

  @override
  void after() {
    super.after();
    dispatch(WaitAction<AppState>.remove(loginFlag));
  }

  @override
  Future<AppState?> reduce() async {
    final Map<String, dynamic> payload = loginPayload.toJson();

    final Response response = await post(
      Uri.parse(logInUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(payload),
    );

    if (response.statusCode == 200) {
      final LoginResponse loginResponse =
          LoginResponse.fromJson(jsonDecode(response.body));

      dispatch(
        UpdateUserProfileStateAction(
          user: loginResponse.user,
          userProfile: loginResponse.userProfile,
          isSignedIn: true,
        ),
      );

      dispatch(
        NavigateAction<AppState>.pushNamedAndRemoveUntil(
          Routes.chat,
          (Route<dynamic> route) => false,
        ),
      );
    } else if (response.statusCode == 400) {
      throw const UserException(invalidCredentials);
    } else if (response.statusCode == 404) {
      dispatch(
        NavigateAction<AppState>.pushNamedAndRemoveUntil(
          Routes.setBasicInfo,
          (Route<dynamic> route) => false,
        ),
      );
    } else {
      throw const UserException(failedToLogin);
    }

    return null;
  }
}
