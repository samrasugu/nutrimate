import 'package:async_redux/async_redux.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/domain/core/value_objects/enums.dart';

class UpdateCompleteProfileStateAction extends ReduxAction<AppState> {
  UpdateCompleteProfileStateAction({
    this.initialRoute,
    this.gender,
    this.age,
    this.weight,
    this.height,
    this.illnesses,
    this.foodPreferences,
    this.location,
  });

  final String? initialRoute;

  final Gender? gender;
  final String? age;
  final String? weight;
  final String? height;
  List<String>? illnesses;
  List<String>? foodPreferences;
  final String? location;

  @override
  AppState? reduce() {
    final AppState updatedAppState = state.copyWith(
      completeProfileState: state.completeProfileState?.copyWith(
        initialRoute: initialRoute ?? state.completeProfileState!.initialRoute,
        gender: gender ?? state.completeProfileState?.gender,
        age: age ?? state.completeProfileState?.age,
        weight: weight ?? state.completeProfileState?.weight,
        height: height ?? state.completeProfileState?.height,
        illnesses: illnesses ?? state.completeProfileState?.illnesses,
        foodPreferences:
            foodPreferences ?? state.completeProfileState?.foodPreferences,
        location: location ?? state.completeProfileState?.location,
      ),
    );
    return updatedAppState;
  }
}
