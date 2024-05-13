// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  UserProfileState? get userProfileState => throw _privateConstructorUsedError;
  CompleteProfileState? get completeProfileState =>
      throw _privateConstructorUsedError;
  MiscState? get miscState => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Wait? get wait => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {UserProfileState? userProfileState,
      CompleteProfileState? completeProfileState,
      MiscState? miscState,
      @JsonKey(includeFromJson: false, includeToJson: false) Wait? wait});

  $UserProfileStateCopyWith<$Res>? get userProfileState;
  $CompleteProfileStateCopyWith<$Res>? get completeProfileState;
  $MiscStateCopyWith<$Res>? get miscState;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfileState = freezed,
    Object? completeProfileState = freezed,
    Object? miscState = freezed,
    Object? wait = freezed,
  }) {
    return _then(_value.copyWith(
      userProfileState: freezed == userProfileState
          ? _value.userProfileState
          : userProfileState // ignore: cast_nullable_to_non_nullable
              as UserProfileState?,
      completeProfileState: freezed == completeProfileState
          ? _value.completeProfileState
          : completeProfileState // ignore: cast_nullable_to_non_nullable
              as CompleteProfileState?,
      miscState: freezed == miscState
          ? _value.miscState
          : miscState // ignore: cast_nullable_to_non_nullable
              as MiscState?,
      wait: freezed == wait
          ? _value.wait
          : wait // ignore: cast_nullable_to_non_nullable
              as Wait?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProfileStateCopyWith<$Res>? get userProfileState {
    if (_value.userProfileState == null) {
      return null;
    }

    return $UserProfileStateCopyWith<$Res>(_value.userProfileState!, (value) {
      return _then(_value.copyWith(userProfileState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CompleteProfileStateCopyWith<$Res>? get completeProfileState {
    if (_value.completeProfileState == null) {
      return null;
    }

    return $CompleteProfileStateCopyWith<$Res>(_value.completeProfileState!,
        (value) {
      return _then(_value.copyWith(completeProfileState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MiscStateCopyWith<$Res>? get miscState {
    if (_value.miscState == null) {
      return null;
    }

    return $MiscStateCopyWith<$Res>(_value.miscState!, (value) {
      return _then(_value.copyWith(miscState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserProfileState? userProfileState,
      CompleteProfileState? completeProfileState,
      MiscState? miscState,
      @JsonKey(includeFromJson: false, includeToJson: false) Wait? wait});

  @override
  $UserProfileStateCopyWith<$Res>? get userProfileState;
  @override
  $CompleteProfileStateCopyWith<$Res>? get completeProfileState;
  @override
  $MiscStateCopyWith<$Res>? get miscState;
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfileState = freezed,
    Object? completeProfileState = freezed,
    Object? miscState = freezed,
    Object? wait = freezed,
  }) {
    return _then(_$AppStateImpl(
      userProfileState: freezed == userProfileState
          ? _value.userProfileState
          : userProfileState // ignore: cast_nullable_to_non_nullable
              as UserProfileState?,
      completeProfileState: freezed == completeProfileState
          ? _value.completeProfileState
          : completeProfileState // ignore: cast_nullable_to_non_nullable
              as CompleteProfileState?,
      miscState: freezed == miscState
          ? _value.miscState
          : miscState // ignore: cast_nullable_to_non_nullable
              as MiscState?,
      wait: freezed == wait
          ? _value.wait
          : wait // ignore: cast_nullable_to_non_nullable
              as Wait?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppStateImpl implements _AppState {
  _$AppStateImpl(
      {this.userProfileState,
      this.completeProfileState,
      this.miscState,
      @JsonKey(includeFromJson: false, includeToJson: false) this.wait});

  factory _$AppStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppStateImplFromJson(json);

  @override
  final UserProfileState? userProfileState;
  @override
  final CompleteProfileState? completeProfileState;
  @override
  final MiscState? miscState;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Wait? wait;

  @override
  String toString() {
    return 'AppState(userProfileState: $userProfileState, completeProfileState: $completeProfileState, miscState: $miscState, wait: $wait)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.userProfileState, userProfileState) ||
                other.userProfileState == userProfileState) &&
            (identical(other.completeProfileState, completeProfileState) ||
                other.completeProfileState == completeProfileState) &&
            (identical(other.miscState, miscState) ||
                other.miscState == miscState) &&
            (identical(other.wait, wait) || other.wait == wait));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userProfileState, completeProfileState, miscState, wait);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppStateImplToJson(
      this,
    );
  }
}

abstract class _AppState implements AppState {
  factory _AppState(
      {final UserProfileState? userProfileState,
      final CompleteProfileState? completeProfileState,
      final MiscState? miscState,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Wait? wait}) = _$AppStateImpl;

  factory _AppState.fromJson(Map<String, dynamic> json) =
      _$AppStateImpl.fromJson;

  @override
  UserProfileState? get userProfileState;
  @override
  CompleteProfileState? get completeProfileState;
  @override
  MiscState? get miscState;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Wait? get wait;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
