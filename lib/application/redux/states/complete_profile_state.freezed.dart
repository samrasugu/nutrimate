// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompleteProfileState _$CompleteProfileStateFromJson(Map<String, dynamic> json) {
  return _CompleteProfileState.fromJson(json);
}

/// @nodoc
mixin _$CompleteProfileState {
  @JsonKey(defaultValue: Routes.setBasicInfo)
  String get initialRoute => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompleteProfileStateCopyWith<CompleteProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteProfileStateCopyWith<$Res> {
  factory $CompleteProfileStateCopyWith(CompleteProfileState value,
          $Res Function(CompleteProfileState) then) =
      _$CompleteProfileStateCopyWithImpl<$Res, CompleteProfileState>;
  @useResult
  $Res call({@JsonKey(defaultValue: Routes.setBasicInfo) String initialRoute});
}

/// @nodoc
class _$CompleteProfileStateCopyWithImpl<$Res,
        $Val extends CompleteProfileState>
    implements $CompleteProfileStateCopyWith<$Res> {
  _$CompleteProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialRoute = null,
  }) {
    return _then(_value.copyWith(
      initialRoute: null == initialRoute
          ? _value.initialRoute
          : initialRoute // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompleteProfileStateImplCopyWith<$Res>
    implements $CompleteProfileStateCopyWith<$Res> {
  factory _$$CompleteProfileStateImplCopyWith(_$CompleteProfileStateImpl value,
          $Res Function(_$CompleteProfileStateImpl) then) =
      __$$CompleteProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(defaultValue: Routes.setBasicInfo) String initialRoute});
}

/// @nodoc
class __$$CompleteProfileStateImplCopyWithImpl<$Res>
    extends _$CompleteProfileStateCopyWithImpl<$Res, _$CompleteProfileStateImpl>
    implements _$$CompleteProfileStateImplCopyWith<$Res> {
  __$$CompleteProfileStateImplCopyWithImpl(_$CompleteProfileStateImpl _value,
      $Res Function(_$CompleteProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialRoute = null,
  }) {
    return _then(_$CompleteProfileStateImpl(
      initialRoute: null == initialRoute
          ? _value.initialRoute
          : initialRoute // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompleteProfileStateImpl implements _CompleteProfileState {
  _$CompleteProfileStateImpl(
      {@JsonKey(defaultValue: Routes.setBasicInfo) required this.initialRoute});

  factory _$CompleteProfileStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompleteProfileStateImplFromJson(json);

  @override
  @JsonKey(defaultValue: Routes.setBasicInfo)
  final String initialRoute;

  @override
  String toString() {
    return 'CompleteProfileState(initialRoute: $initialRoute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteProfileStateImpl &&
            (identical(other.initialRoute, initialRoute) ||
                other.initialRoute == initialRoute));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, initialRoute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteProfileStateImplCopyWith<_$CompleteProfileStateImpl>
      get copyWith =>
          __$$CompleteProfileStateImplCopyWithImpl<_$CompleteProfileStateImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompleteProfileStateImplToJson(
      this,
    );
  }
}

abstract class _CompleteProfileState implements CompleteProfileState {
  factory _CompleteProfileState(
      {@JsonKey(defaultValue: Routes.setBasicInfo)
      required final String initialRoute}) = _$CompleteProfileStateImpl;

  factory _CompleteProfileState.fromJson(Map<String, dynamic> json) =
      _$CompleteProfileStateImpl.fromJson;

  @override
  @JsonKey(defaultValue: Routes.setBasicInfo)
  String get initialRoute;
  @override
  @JsonKey(ignore: true)
  _$$CompleteProfileStateImplCopyWith<_$CompleteProfileStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
