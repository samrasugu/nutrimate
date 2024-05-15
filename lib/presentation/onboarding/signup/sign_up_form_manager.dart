import 'package:nutrimate/domain/core/entities/sign_up/sign_up_payload.dart';
import 'package:nutrimate/presentation/onboarding/signup/validator_mixin.dart';
import 'package:rxdart/rxdart.dart';

class SignUpFormManager with Validator {
  final BehaviorSubject<String> _firstName = BehaviorSubject<String>();
  Stream<String> get firstName => _firstName.stream.transform(validateName);
  Sink<String> get inFirstName => _firstName.sink;

  final BehaviorSubject<String> _lastName = BehaviorSubject<String>();
  Stream<String> get lastName => _lastName.stream.transform(validateName);
  Sink<String> get inLastName => _lastName.sink;

  final BehaviorSubject<String> _email = BehaviorSubject<String>();
  Stream<String> get email => _email.stream.transform(validateEmail);
  Sink<String> get inEmail => _email.sink;

  final BehaviorSubject<String> _password = BehaviorSubject<String>();
  Stream<String> get password => _password.stream.transform(validatePassword);
  Sink<String> get inPassword => _password.sink;

  final BehaviorSubject<bool> _isTermsAndConditionsAccepted =
      BehaviorSubject<bool>();
  Sink<bool> get inIsTermsAndConditionsAccepted =>
      _isTermsAndConditionsAccepted.sink;

  Stream<bool> get isFormValid =>
      CombineLatestStream.combine4<String, String, String, String, bool>(
          _firstName, _lastName, _email, _password, (
        String firstName,
        String lastName,
        String email,
        String password,
      ) {
        return Validator.isValidName(firstName) &&
            Validator.isValidName(lastName) &&
            Validator.isValidEmail(email) &&
            Validator.isValidPassword(password) 
            // &&
            // _isTermsAndConditionsAccepted.value
            ;
      }).startWith(false);

  SignUpPayload submit() {
    return SignUpPayload(
      firstname: _firstName.valueOrNull,
      lastname: _lastName.valueOrNull,
      email: _email.valueOrNull,
      password: _password.valueOrNull,
    );
  }
}
