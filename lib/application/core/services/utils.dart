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

Gender genderFromString(String? value) {
  if (value == null || value.isEmpty) {
    return Gender.unknown;
  }

  return Gender.values
      .where(
        (Gender gender) => gender.name.toLowerCase() == value.toLowerCase(),
      )
      .first;
}

String genderToJson(Gender? gender) {
  return (gender?.name ?? Gender.unknown.name).toLowerCase();
}

List<String> mealTimes = <String>[
  '3 times a day(breakfast, lunch, dinner)',
  '4-5 times a day(adding snacks)',
  'I don\'t have a specific schedule',
];

List<String> dietaryPreferences = <String>[
  'Dairy Free',
  'Egg Free',
  'Gluten Free',
  'Keto',
  'Paleo',
  'Pescatarian',
  'Vegan',
  'Vegetarian',
  'Hindu',
  'Kosher',
  'Muslim Halal',
  'I don\'t have any dietary restrictions',
];

List<String> mealTypes = <String>[
  'Vegan',
  'Vegetarian',
  'Pescatarian',
  'Keto',
  'Paleo',
  'Gluten Free',
  'Dairy Free',
  'Low Carb',
  'Low Fat',
  'Low Sodium',
  'Low Sugar',
  'Balanced',
  'I don\'t have a specific diet',
];

List<String> activityLevels = <String>[
  'Sedentary',
  'Lightly Active',
  'Moderately Active',
  'Very Active',
  'Extra Active',
];

List<String> goals = <String>[
  'Lose Weight',
  'Maintain Weight',
  'Gain Weight',
];

List<String> allergies = <String>[
  'Dairy',
  'Egg',
  'Gluten',
  'Grain',
  'Peanut',
  'Seafood',
  'Sesame',
  'Shellfish',
  'Soy',
  'Sulfite',
  'Tree Nut',
  'Wheat',
  'I don\'t have any allergies',
];
