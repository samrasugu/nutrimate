// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'misc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiscState _$MiscStateFromJson(Map<String, dynamic> json) {
  return _MiscState.fromJson(json);
}

/// @nodoc
mixin _$MiscState {
  @JsonKey(defaultValue: Routes.onboardingIntro)
  String get initialRoute => throw _privateConstructorUsedError;
  bool? get invalidCredentials => throw _privateConstructorUsedError;
  SearchDiseasesState? get searchDiseasesState =>
      throw _privateConstructorUsedError;
  SearchLocationState? get searchLocationState =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MiscStateCopyWith<MiscState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiscStateCopyWith<$Res> {
  factory $MiscStateCopyWith(MiscState value, $Res Function(MiscState) then) =
      _$MiscStateCopyWithImpl<$Res, MiscState>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: Routes.onboardingIntro) String initialRoute,
      bool? invalidCredentials,
      SearchDiseasesState? searchDiseasesState,
      SearchLocationState? searchLocationState});

  $SearchDiseasesStateCopyWith<$Res>? get searchDiseasesState;
  $SearchLocationStateCopyWith<$Res>? get searchLocationState;
}

/// @nodoc
class _$MiscStateCopyWithImpl<$Res, $Val extends MiscState>
    implements $MiscStateCopyWith<$Res> {
  _$MiscStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialRoute = null,
    Object? invalidCredentials = freezed,
    Object? searchDiseasesState = freezed,
    Object? searchLocationState = freezed,
  }) {
    return _then(_value.copyWith(
      initialRoute: null == initialRoute
          ? _value.initialRoute
          : initialRoute // ignore: cast_nullable_to_non_nullable
              as String,
      invalidCredentials: freezed == invalidCredentials
          ? _value.invalidCredentials
          : invalidCredentials // ignore: cast_nullable_to_non_nullable
              as bool?,
      searchDiseasesState: freezed == searchDiseasesState
          ? _value.searchDiseasesState
          : searchDiseasesState // ignore: cast_nullable_to_non_nullable
              as SearchDiseasesState?,
      searchLocationState: freezed == searchLocationState
          ? _value.searchLocationState
          : searchLocationState // ignore: cast_nullable_to_non_nullable
              as SearchLocationState?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchDiseasesStateCopyWith<$Res>? get searchDiseasesState {
    if (_value.searchDiseasesState == null) {
      return null;
    }

    return $SearchDiseasesStateCopyWith<$Res>(_value.searchDiseasesState!,
        (value) {
      return _then(_value.copyWith(searchDiseasesState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchLocationStateCopyWith<$Res>? get searchLocationState {
    if (_value.searchLocationState == null) {
      return null;
    }

    return $SearchLocationStateCopyWith<$Res>(_value.searchLocationState!,
        (value) {
      return _then(_value.copyWith(searchLocationState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiscStateImplCopyWith<$Res>
    implements $MiscStateCopyWith<$Res> {
  factory _$$MiscStateImplCopyWith(
          _$MiscStateImpl value, $Res Function(_$MiscStateImpl) then) =
      __$$MiscStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: Routes.onboardingIntro) String initialRoute,
      bool? invalidCredentials,
      SearchDiseasesState? searchDiseasesState,
      SearchLocationState? searchLocationState});

  @override
  $SearchDiseasesStateCopyWith<$Res>? get searchDiseasesState;
  @override
  $SearchLocationStateCopyWith<$Res>? get searchLocationState;
}

/// @nodoc
class __$$MiscStateImplCopyWithImpl<$Res>
    extends _$MiscStateCopyWithImpl<$Res, _$MiscStateImpl>
    implements _$$MiscStateImplCopyWith<$Res> {
  __$$MiscStateImplCopyWithImpl(
      _$MiscStateImpl _value, $Res Function(_$MiscStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialRoute = null,
    Object? invalidCredentials = freezed,
    Object? searchDiseasesState = freezed,
    Object? searchLocationState = freezed,
  }) {
    return _then(_$MiscStateImpl(
      initialRoute: null == initialRoute
          ? _value.initialRoute
          : initialRoute // ignore: cast_nullable_to_non_nullable
              as String,
      invalidCredentials: freezed == invalidCredentials
          ? _value.invalidCredentials
          : invalidCredentials // ignore: cast_nullable_to_non_nullable
              as bool?,
      searchDiseasesState: freezed == searchDiseasesState
          ? _value.searchDiseasesState
          : searchDiseasesState // ignore: cast_nullable_to_non_nullable
              as SearchDiseasesState?,
      searchLocationState: freezed == searchLocationState
          ? _value.searchLocationState
          : searchLocationState // ignore: cast_nullable_to_non_nullable
              as SearchLocationState?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiscStateImpl implements _MiscState {
  _$MiscStateImpl(
      {@JsonKey(defaultValue: Routes.onboardingIntro)
      required this.initialRoute,
      this.invalidCredentials,
      this.searchDiseasesState,
      this.searchLocationState});

  factory _$MiscStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiscStateImplFromJson(json);

  @override
  @JsonKey(defaultValue: Routes.onboardingIntro)
  final String initialRoute;
  @override
  final bool? invalidCredentials;
  @override
  final SearchDiseasesState? searchDiseasesState;
  @override
  final SearchLocationState? searchLocationState;

  @override
  String toString() {
    return 'MiscState(initialRoute: $initialRoute, invalidCredentials: $invalidCredentials, searchDiseasesState: $searchDiseasesState, searchLocationState: $searchLocationState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiscStateImpl &&
            (identical(other.initialRoute, initialRoute) ||
                other.initialRoute == initialRoute) &&
            (identical(other.invalidCredentials, invalidCredentials) ||
                other.invalidCredentials == invalidCredentials) &&
            (identical(other.searchDiseasesState, searchDiseasesState) ||
                other.searchDiseasesState == searchDiseasesState) &&
            (identical(other.searchLocationState, searchLocationState) ||
                other.searchLocationState == searchLocationState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, initialRoute, invalidCredentials,
      searchDiseasesState, searchLocationState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MiscStateImplCopyWith<_$MiscStateImpl> get copyWith =>
      __$$MiscStateImplCopyWithImpl<_$MiscStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiscStateImplToJson(
      this,
    );
  }
}

abstract class _MiscState implements MiscState {
  factory _MiscState(
      {@JsonKey(defaultValue: Routes.onboardingIntro)
      required final String initialRoute,
      final bool? invalidCredentials,
      final SearchDiseasesState? searchDiseasesState,
      final SearchLocationState? searchLocationState}) = _$MiscStateImpl;

  factory _MiscState.fromJson(Map<String, dynamic> json) =
      _$MiscStateImpl.fromJson;

  @override
  @JsonKey(defaultValue: Routes.onboardingIntro)
  String get initialRoute;
  @override
  bool? get invalidCredentials;
  @override
  SearchDiseasesState? get searchDiseasesState;
  @override
  SearchLocationState? get searchLocationState;
  @override
  @JsonKey(ignore: true)
  _$$MiscStateImplCopyWith<_$MiscStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
