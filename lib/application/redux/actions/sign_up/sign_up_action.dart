import 'dart:convert';

import 'package:async_redux/async_redux.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:nutrimate/application/redux/actions/update_user_profile_state_action.dart';
import 'package:nutrimate/application/redux/flags/flags.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/domain/core/entities/core/user.dart';
import 'package:nutrimate/domain/core/entities/sign_up/sign_up_payload.dart';
import 'package:nutrimate/domain/core/entities/sign_up/sign_up_response.dart';
import 'package:nutrimate/domain/core/entities/sign_up/user_signup_response.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
import 'package:nutrimate/infrastructure/endpoints.dart';

class SignUpAction extends ReduxAction<AppState> {
  final SignUpPayload signUpPayload;
  final VoidCallback? onSuccess;

  SignUpAction({
    required this.signUpPayload,
    required this.onSuccess,
  });

  @override
  void before() {
    super.before();
    dispatch(WaitAction<AppState>.add(signUpFlag));
  }

  @override
  void after() {
    super.after();
    dispatch(WaitAction<AppState>.remove(signUpFlag));
  }

  @override
  Future<AppState?> reduce() async {
    final Map<String, dynamic> payload = signUpPayload.toJson();

    final Response response = await post(
      Uri.parse(signUpUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(payload),
    );

    final Map<String, dynamic> responseBody = jsonDecode(response.body);

    final SignUpResponse signUpResponse = SignUpResponse.fromJson(responseBody);

    final UserSignUpResponse? userSignUpResponse =
        signUpResponse.userSignUpResponse;

    User user = User(
      id: userSignUpResponse?.id,
      firstname: userSignUpResponse?.firstName,
      lastname: userSignUpResponse?.lastName,
      email: userSignUpResponse?.email,
    );

    if (response.statusCode == 201) {
      dispatch(
        UpdateUserProfileStateAction(
          user: user,
          isSignedIn: true,
        ),
      );
      onSuccess?.call();
    } else if (response.statusCode == 400) {
      throw UserException(responseBody['error']);
    } else {
      throw const UserException(failedToSignUp);
    }
    return null;
  }
}
