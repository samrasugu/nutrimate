// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompleteProfileResponse _$CompleteProfileResponseFromJson(
    Map<String, dynamic> json) {
  return _CompleteProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$CompleteProfileResponse {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile')
  UserProfile? get userProfile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompleteProfileResponseCopyWith<CompleteProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteProfileResponseCopyWith<$Res> {
  factory $CompleteProfileResponseCopyWith(CompleteProfileResponse value,
          $Res Function(CompleteProfileResponse) then) =
      _$CompleteProfileResponseCopyWithImpl<$Res, CompleteProfileResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'profile') UserProfile? userProfile});

  $UserProfileCopyWith<$Res>? get userProfile;
}

/// @nodoc
class _$CompleteProfileResponseCopyWithImpl<$Res,
        $Val extends CompleteProfileResponse>
    implements $CompleteProfileResponseCopyWith<$Res> {
  _$CompleteProfileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? userProfile = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      userProfile: freezed == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfile?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProfileCopyWith<$Res>? get userProfile {
    if (_value.userProfile == null) {
      return null;
    }

    return $UserProfileCopyWith<$Res>(_value.userProfile!, (value) {
      return _then(_value.copyWith(userProfile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompleteProfileResponseImplCopyWith<$Res>
    implements $CompleteProfileResponseCopyWith<$Res> {
  factory _$$CompleteProfileResponseImplCopyWith(
          _$CompleteProfileResponseImpl value,
          $Res Function(_$CompleteProfileResponseImpl) then) =
      __$$CompleteProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'profile') UserProfile? userProfile});

  @override
  $UserProfileCopyWith<$Res>? get userProfile;
}

/// @nodoc
class __$$CompleteProfileResponseImplCopyWithImpl<$Res>
    extends _$CompleteProfileResponseCopyWithImpl<$Res,
        _$CompleteProfileResponseImpl>
    implements _$$CompleteProfileResponseImplCopyWith<$Res> {
  __$$CompleteProfileResponseImplCopyWithImpl(
      _$CompleteProfileResponseImpl _value,
      $Res Function(_$CompleteProfileResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? userProfile = freezed,
  }) {
    return _then(_$CompleteProfileResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      userProfile: freezed == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompleteProfileResponseImpl implements _CompleteProfileResponse {
  _$CompleteProfileResponseImpl(
      {@JsonKey(name: 'message') this.message,
      @JsonKey(name: 'profile') this.userProfile});

  factory _$CompleteProfileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompleteProfileResponseImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'profile')
  final UserProfile? userProfile;

  @override
  String toString() {
    return 'CompleteProfileResponse(message: $message, userProfile: $userProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteProfileResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, userProfile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteProfileResponseImplCopyWith<_$CompleteProfileResponseImpl>
      get copyWith => __$$CompleteProfileResponseImplCopyWithImpl<
          _$CompleteProfileResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompleteProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _CompleteProfileResponse implements CompleteProfileResponse {
  factory _CompleteProfileResponse(
          {@JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'profile') final UserProfile? userProfile}) =
      _$CompleteProfileResponseImpl;

  factory _CompleteProfileResponse.fromJson(Map<String, dynamic> json) =
      _$CompleteProfileResponseImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'profile')
  UserProfile? get userProfile;
  @override
  @JsonKey(ignore: true)
  _$$CompleteProfileResponseImplCopyWith<_$CompleteProfileResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
