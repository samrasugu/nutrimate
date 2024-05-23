import 'package:nutrimate/domain/core/value_objects/enums.dart';
import 'package:nutrimate/presentation/onboarding/signup/validator_mixin.dart';
import 'package:rxdart/rxdart.dart';

class BasicInfoFormManager with Validator {
  final BehaviorSubject<Gender> _gender = BehaviorSubject<Gender>();
  Stream<Gender> get gender => _gender.stream.transform(validateGender);
  Sink<Gender> get inGender => _gender.sink;

  final BehaviorSubject<String> _age = BehaviorSubject<String>();
  Stream<String> get age => _age.stream.transform(validateAge);
  Sink<String> get inAge => _age.sink;

  final BehaviorSubject<String> _weight = BehaviorSubject<String>();
  Stream<String> get weight => _weight.stream.transform(validateWeight);
  Sink<String> get inWeight => _weight.sink;

  final BehaviorSubject<String> _height = BehaviorSubject<String>();
  Stream<String> get height => _height.stream.transform(validateHeight);
  Sink<String> get inHeight => _height.sink;

  Stream<bool> get isFormValid =>
      CombineLatestStream.combine4<Gender, String, String, String, bool>(
          _gender, _age, _weight, _height,
          (Gender gender, String age, String weight, String height) {
        return Validator.isValidGender(gender) &&
            Validator.isValidAge(age) &&
            Validator.isValidWeight(weight) &&
            Validator.isValidHeight(height);
      });
}
