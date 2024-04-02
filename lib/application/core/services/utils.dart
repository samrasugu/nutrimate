import 'package:nutrimate/domain/core/value_objects/enums.dart';

List<String> genderList() {
  final List<String> genderList = <String>[];

  for (final Gender gender in Gender.values) {
    if (gender != Gender.unknown) {
      genderList.add(capitalize(gender.name));
    }
  }

  return genderList;
}

String capitalize(String input) {
  return '${input[0].toUpperCase()}${input.substring(1).toLowerCase()}';
}

List<String> mealTimes = <String>[
  '3 times a day(breakfast, lunch, dinner)',
  '4-5 times a day(adding snacks)',
  'I don\'t have a specific schedule',
];