import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrimate/presentation/router/routes.dart';

part 'complete_profile_state.freezed.dart';
part 'complete_profile_state.g.dart';

@freezed
class CompleteProfileState with _$CompleteProfileState {
  factory CompleteProfileState({
    @JsonKey(defaultValue: Routes.setBasicInfo)
    required String initialRoute,
  }) = _CompleteProfileState;

  factory CompleteProfileState.fromJson(Map<String, dynamic> json) =>
      _$CompleteProfileStateFromJson(json);

  factory CompleteProfileState.initial() => CompleteProfileState(
        initialRoute: Routes.setBasicInfo,
      );
}