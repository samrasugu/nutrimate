import 'dart:convert';

import 'package:async_redux/async_redux.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:nutrimate/application/redux/actions/update_user_profile_state_action.dart';
import 'package:nutrimate/application/redux/flags/flags.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/domain/core/entities/core/user.dart';
import 'package:nutrimate/domain/core/entities/login/login_payload.dart';
import 'package:nutrimate/domain/core/entities/sign_up/sign_up_response.dart';
import 'package:nutrimate/domain/core/entities/sign_up/user_signup_response.dart';
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

    final SignUpResponse signUpResponse =
        SignUpResponse.fromJson(jsonDecode(response.body));

    final UserSignUpResponse? userSignUpResponse =
        signUpResponse.userSignUpResponse;

    if (userSignUpResponse != null) {
      User user = User(
        id: userSignUpResponse.id,
        firstname: userSignUpResponse.firstName,
        lastname: userSignUpResponse.lastName,
        email: userSignUpResponse.email,
      );

      if (response.statusCode == 200) {
        dispatch(
          UpdateUserProfileStateAction(
            user: user,
            isSignedIn: true,
          ),
        );

        // TODO: dispatch action to fetch and update user profile
        // Replace with aciton to update user profile

        dispatch(
          NavigateAction<AppState>.pushNamedAndRemoveUntil(
            Routes.chat,
            (Route<dynamic> route) => false,
          ),
        );
      } else {
        throw const UserException(failedToLogin);
      }
    } else if (response.statusCode == 400) {
      throw const UserException(invalidCredentials);
    } else {
      throw const UserException(failedToLogin);
    }

    return null;
  }
}
