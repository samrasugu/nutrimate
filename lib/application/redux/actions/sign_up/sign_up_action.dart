import 'dart:convert';

import 'package:async_redux/async_redux.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:nutrimate/application/redux/flags/flags.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/domain/core/entities/sign_up/sign_up_payload.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
import 'package:nutrimate/infrastructure/endpoints.dart';

class SignUpAction extends ReduxAction<AppState> {
  final SignUpPayload signUpPayload;
  final VoidCallback onSuccess;

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

    // print(payload);

    final Response response = await post(
      Uri.parse(signUpUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(payload),
    );

    if (response.statusCode == 200) {
      onSuccess();
    } else {
      throw const UserException(failedToSignUp);
    }
    return null;
  }
}
