import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrimate/application/redux/states/search_diseases_state.dart';

import 'package:nutrimate/presentation/router/routes.dart';

part 'misc_state.freezed.dart';
part 'misc_state.g.dart';

@freezed
class MiscState with _$MiscState {
  factory MiscState({
    @JsonKey(defaultValue: Routes.onboardingIntro) required String initialRoute,
    bool? invalidCredentials,
    SearchDiseasesState? searchDiseasesState,
  }) = _MiscState;

  factory MiscState.fromJson(Map<String, dynamic> json) =>
      _$MiscStateFromJson(json);

  factory MiscState.initial() => MiscState(
        initialRoute: Routes.onboardingIntro,
        invalidCredentials: false,
        searchDiseasesState: SearchDiseasesState.initial(),
      );
}
