import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
import 'package:nutrimate/domain/core/value_objects/enums.dart';

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

  final StreamTransformer<Gender, Gender> validateGender =
      StreamTransformer<Gender, Gender>.fromHandlers(
    handleData: (Gender value, EventSink<Gender> sink) {
      if (isValidGender(value)) {
        sink.add(value);
      } else {
        sink.addError(const UserException(invalidGenderText));
      }
    },
  );

  final StreamTransformer<String, String> validateAge =
      StreamTransformer<String, String>.fromHandlers(
    handleData: (String age, EventSink<String> sink) {
      if (isValidAge(age)) {
        sink.add(age);
      } else {
        sink.addError(const UserException(invalidAgeText));
      }
    },
  );

  final StreamTransformer<String, String> validateWeight =
      StreamTransformer<String, String>.fromHandlers(
    handleData: (String weight, EventSink<String> sink) {
      if (isValidWeight(weight)) {
        sink.add(weight);
      } else {
        sink.addError(const UserException(allFieldsRequiredText));
      }
    },
  );

  final StreamTransformer<String, String> validateHeight =
      StreamTransformer<String, String>.fromHandlers(
    handleData: (String height, EventSink<String> sink) {
      if (isValidHeight(height)) {
        sink.add(height);
      } else {
        sink.addError(const UserException(allFieldsRequiredText));
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

  static bool isValidGender(Gender gender) {
    return gender != Gender.unknown;
  }

  static bool isValidWeight(String weight) {
    return weight.isNotEmpty;
  }

  static bool isValidHeight(String height) {
    return height.isNotEmpty;
  }

  static bool isValidAge(String age) {
    return age.isNotEmpty;
  }
}
