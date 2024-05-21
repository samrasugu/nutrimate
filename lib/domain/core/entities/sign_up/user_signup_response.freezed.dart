// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_signup_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserSignUpResponse _$UserSignUpResponseFromJson(Map<String, dynamic> json) {
  return _UserSignUpResponse.fromJson(json);
}

/// @nodoc
mixin _$UserSignUpResponse {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstname')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastname')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSignUpResponseCopyWith<UserSignUpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSignUpResponseCopyWith<$Res> {
  factory $UserSignUpResponseCopyWith(
          UserSignUpResponse value, $Res Function(UserSignUpResponse) then) =
      _$UserSignUpResponseCopyWithImpl<$Res, UserSignUpResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'firstname') String? firstName,
      @JsonKey(name: 'lastname') String? lastName,
      @JsonKey(name: 'email') String? email});
}

/// @nodoc
class _$UserSignUpResponseCopyWithImpl<$Res, $Val extends UserSignUpResponse>
    implements $UserSignUpResponseCopyWith<$Res> {
  _$UserSignUpResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSignUpResponseImplCopyWith<$Res>
    implements $UserSignUpResponseCopyWith<$Res> {
  factory _$$UserSignUpResponseImplCopyWith(_$UserSignUpResponseImpl value,
          $Res Function(_$UserSignUpResponseImpl) then) =
      __$$UserSignUpResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'firstname') String? firstName,
      @JsonKey(name: 'lastname') String? lastName,
      @JsonKey(name: 'email') String? email});
}

/// @nodoc
class __$$UserSignUpResponseImplCopyWithImpl<$Res>
    extends _$UserSignUpResponseCopyWithImpl<$Res, _$UserSignUpResponseImpl>
    implements _$$UserSignUpResponseImplCopyWith<$Res> {
  __$$UserSignUpResponseImplCopyWithImpl(_$UserSignUpResponseImpl _value,
      $Res Function(_$UserSignUpResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
  }) {
    return _then(_$UserSignUpResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSignUpResponseImpl implements _UserSignUpResponse {
  _$UserSignUpResponseImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'firstname') this.firstName,
      @JsonKey(name: 'lastname') this.lastName,
      @JsonKey(name: 'email') this.email});

  factory _$UserSignUpResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSignUpResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'firstname')
  final String? firstName;
  @override
  @JsonKey(name: 'lastname')
  final String? lastName;
  @override
  @JsonKey(name: 'email')
  final String? email;

  @override
  String toString() {
    return 'UserSignUpResponse(id: $id, firstName: $firstName, lastName: $lastName, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSignUpResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSignUpResponseImplCopyWith<_$UserSignUpResponseImpl> get copyWith =>
      __$$UserSignUpResponseImplCopyWithImpl<_$UserSignUpResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSignUpResponseImplToJson(
      this,
    );
  }
}

abstract class _UserSignUpResponse implements UserSignUpResponse {
  factory _UserSignUpResponse(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'firstname') final String? firstName,
      @JsonKey(name: 'lastname') final String? lastName,
      @JsonKey(name: 'email') final String? email}) = _$UserSignUpResponseImpl;

  factory _UserSignUpResponse.fromJson(Map<String, dynamic> json) =
      _$UserSignUpResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'firstname')
  String? get firstName;
  @override
  @JsonKey(name: 'lastname')
  String? get lastName;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$UserSignUpResponseImplCopyWith<_$UserSignUpResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
