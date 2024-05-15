// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpPayload _$SignUpPayloadFromJson(Map<String, dynamic> json) {
  return _SignUpPayload.fromJson(json);
}

/// @nodoc
mixin _$SignUpPayload {
  @JsonKey(name: 'firstname')
  String? get firstname => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastname')
  String? get lastname => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpPayloadCopyWith<SignUpPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpPayloadCopyWith<$Res> {
  factory $SignUpPayloadCopyWith(
          SignUpPayload value, $Res Function(SignUpPayload) then) =
      _$SignUpPayloadCopyWithImpl<$Res, SignUpPayload>;
  @useResult
  $Res call(
      {@JsonKey(name: 'firstname') String? firstname,
      @JsonKey(name: 'lastname') String? lastname,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class _$SignUpPayloadCopyWithImpl<$Res, $Val extends SignUpPayload>
    implements $SignUpPayloadCopyWith<$Res> {
  _$SignUpPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpPayloadImplCopyWith<$Res>
    implements $SignUpPayloadCopyWith<$Res> {
  factory _$$SignUpPayloadImplCopyWith(
          _$SignUpPayloadImpl value, $Res Function(_$SignUpPayloadImpl) then) =
      __$$SignUpPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'firstname') String? firstname,
      @JsonKey(name: 'lastname') String? lastname,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class __$$SignUpPayloadImplCopyWithImpl<$Res>
    extends _$SignUpPayloadCopyWithImpl<$Res, _$SignUpPayloadImpl>
    implements _$$SignUpPayloadImplCopyWith<$Res> {
  __$$SignUpPayloadImplCopyWithImpl(
      _$SignUpPayloadImpl _value, $Res Function(_$SignUpPayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$SignUpPayloadImpl(
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpPayloadImpl implements _SignUpPayload {
  _$SignUpPayloadImpl(
      {@JsonKey(name: 'firstname') this.firstname,
      @JsonKey(name: 'lastname') this.lastname,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'password') this.password});

  factory _$SignUpPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpPayloadImplFromJson(json);

  @override
  @JsonKey(name: 'firstname')
  final String? firstname;
  @override
  @JsonKey(name: 'lastname')
  final String? lastname;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'password')
  final String? password;

  @override
  String toString() {
    return 'SignUpPayload(firstname: $firstname, lastname: $lastname, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpPayloadImpl &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstname, lastname, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpPayloadImplCopyWith<_$SignUpPayloadImpl> get copyWith =>
      __$$SignUpPayloadImplCopyWithImpl<_$SignUpPayloadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpPayloadImplToJson(
      this,
    );
  }
}

abstract class _SignUpPayload implements SignUpPayload {
  factory _SignUpPayload(
      {@JsonKey(name: 'firstname') final String? firstname,
      @JsonKey(name: 'lastname') final String? lastname,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'password') final String? password}) = _$SignUpPayloadImpl;

  factory _SignUpPayload.fromJson(Map<String, dynamic> json) =
      _$SignUpPayloadImpl.fromJson;

  @override
  @JsonKey(name: 'firstname')
  String? get firstname;
  @override
  @JsonKey(name: 'lastname')
  String? get lastname;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$SignUpPayloadImplCopyWith<_$SignUpPayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
