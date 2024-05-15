import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';

mixin Validator {
  final StreamTransformer<String, String> validateName =
      StreamTransformer<String, String>.fromHandlers(
    handleData: (String name, EventSink<String> sink) {
      if (isValidName(name)) {
        sink.add(name);
      } else {
        sink.addError(
          const UserException(invalidNameText),
        );
      }
    },
  );

  final StreamTransformer<String, String> validateEmail =
      StreamTransformer<String, String>.fromHandlers(
    handleData: (String email, EventSink<String> sink) {
      if (isValidEmail(email)) {
        sink.add(email);
      } else {
        sink.addError(const UserException(invalidEmailText));
      }
    },
  );

  final StreamTransformer<String, String> validatePassword =
      StreamTransformer<String, String>.fromHandlers(
    handleData: (String password, EventSink<String> sink) {
      if (isValidPassword(password)) {
        sink.add(password);
      } else {
        sink.addError(const UserException(invalidPasswordText));
      }
    },
  );

  static bool isValidEmail(String email) {
    return RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+').hasMatch(email);
  }

  static bool isValidPassword(String password) {
    return password.length >= 6;
  }

  static bool isValidName(String name) {
    return name.isNotEmpty && name.length >= 3;
  }
}
