// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpResponse _$SignUpResponseFromJson(Map<String, dynamic> json) {
  return _SignUpResponse.fromJson(json);
}

/// @nodoc
mixin _$SignUpResponse {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserSignUpResponse? get userSignUpResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpResponseCopyWith<SignUpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpResponseCopyWith<$Res> {
  factory $SignUpResponseCopyWith(
          SignUpResponse value, $Res Function(SignUpResponse) then) =
      _$SignUpResponseCopyWithImpl<$Res, SignUpResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'user') UserSignUpResponse? userSignUpResponse});

  $UserSignUpResponseCopyWith<$Res>? get userSignUpResponse;
}

/// @nodoc
class _$SignUpResponseCopyWithImpl<$Res, $Val extends SignUpResponse>
    implements $SignUpResponseCopyWith<$Res> {
  _$SignUpResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? userSignUpResponse = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      userSignUpResponse: freezed == userSignUpResponse
          ? _value.userSignUpResponse
          : userSignUpResponse // ignore: cast_nullable_to_non_nullable
              as UserSignUpResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserSignUpResponseCopyWith<$Res>? get userSignUpResponse {
    if (_value.userSignUpResponse == null) {
      return null;
    }

    return $UserSignUpResponseCopyWith<$Res>(_value.userSignUpResponse!,
        (value) {
      return _then(_value.copyWith(userSignUpResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignUpResponseImplCopyWith<$Res>
    implements $SignUpResponseCopyWith<$Res> {
  factory _$$SignUpResponseImplCopyWith(_$SignUpResponseImpl value,
          $Res Function(_$SignUpResponseImpl) then) =
      __$$SignUpResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'user') UserSignUpResponse? userSignUpResponse});

  @override
  $UserSignUpResponseCopyWith<$Res>? get userSignUpResponse;
}

/// @nodoc
class __$$SignUpResponseImplCopyWithImpl<$Res>
    extends _$SignUpResponseCopyWithImpl<$Res, _$SignUpResponseImpl>
    implements _$$SignUpResponseImplCopyWith<$Res> {
  __$$SignUpResponseImplCopyWithImpl(
      _$SignUpResponseImpl _value, $Res Function(_$SignUpResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? userSignUpResponse = freezed,
  }) {
    return _then(_$SignUpResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      userSignUpResponse: freezed == userSignUpResponse
          ? _value.userSignUpResponse
          : userSignUpResponse // ignore: cast_nullable_to_non_nullable
              as UserSignUpResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpResponseImpl implements _SignUpResponse {
  _$SignUpResponseImpl(
      {@JsonKey(name: 'message') this.message,
      @JsonKey(name: 'user') this.userSignUpResponse});

  factory _$SignUpResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpResponseImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'user')
  final UserSignUpResponse? userSignUpResponse;

  @override
  String toString() {
    return 'SignUpResponse(message: $message, userSignUpResponse: $userSignUpResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userSignUpResponse, userSignUpResponse) ||
                other.userSignUpResponse == userSignUpResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, userSignUpResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpResponseImplCopyWith<_$SignUpResponseImpl> get copyWith =>
      __$$SignUpResponseImplCopyWithImpl<_$SignUpResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpResponseImplToJson(
      this,
    );
  }
}

abstract class _SignUpResponse implements SignUpResponse {
  factory _SignUpResponse(
      {@JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'user')
      final UserSignUpResponse? userSignUpResponse}) = _$SignUpResponseImpl;

  factory _SignUpResponse.fromJson(Map<String, dynamic> json) =
      _$SignUpResponseImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'user')
  UserSignUpResponse? get userSignUpResponse;
  @override
  @JsonKey(ignore: true)
  _$$SignUpResponseImplCopyWith<_$SignUpResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
