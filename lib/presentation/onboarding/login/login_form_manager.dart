import 'package:nutrimate/domain/core/entities/login/login_payload.dart';
import 'package:nutrimate/presentation/onboarding/signup/validator_mixin.dart';
import 'package:rxdart/rxdart.dart';

class LoginFormManager with Validator {
  final BehaviorSubject<String> _email = BehaviorSubject<String>();
  Stream<String> get email => _email.stream.transform(validateEmail);
  Sink<String> get inEmail => _email.sink;

  final BehaviorSubject<String> _password = BehaviorSubject<String>();
  Stream<String> get password => _password.stream.transform(validatePassword);
  Sink<String> get inPassword => _password.sink;

  Stream<bool> get isFormValid =>
      CombineLatestStream.combine2<String, String, bool>(
        _email,
        _password,
        (
          String email,
          String password,
        ) {
          return Validator.isValidEmail(email) &&
              Validator.isValidPassword(password);
        },
      ).startWith(false);

  LoginPayload submit() {
    return LoginPayload(
      email: _email.valueOrNull,
      password: _password.valueOrNull,
    );
  }
}