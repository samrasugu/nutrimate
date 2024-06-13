// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationSearchResponse _$LocationSearchResponseFromJson(
    Map<String, dynamic> json) {
  return _LocationSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$LocationSearchResponse {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'locations')
  List<Location?>? get locations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationSearchResponseCopyWith<LocationSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationSearchResponseCopyWith<$Res> {
  factory $LocationSearchResponseCopyWith(LocationSearchResponse value,
          $Res Function(LocationSearchResponse) then) =
      _$LocationSearchResponseCopyWithImpl<$Res, LocationSearchResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'locations') List<Location?>? locations});
}

/// @nodoc
class _$LocationSearchResponseCopyWithImpl<$Res,
        $Val extends LocationSearchResponse>
    implements $LocationSearchResponseCopyWith<$Res> {
  _$LocationSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? locations = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Location?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationSearchResponseImplCopyWith<$Res>
    implements $LocationSearchResponseCopyWith<$Res> {
  factory _$$LocationSearchResponseImplCopyWith(
          _$LocationSearchResponseImpl value,
          $Res Function(_$LocationSearchResponseImpl) then) =
      __$$LocationSearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'locations') List<Location?>? locations});
}

/// @nodoc
class __$$LocationSearchResponseImplCopyWithImpl<$Res>
    extends _$LocationSearchResponseCopyWithImpl<$Res,
        _$LocationSearchResponseImpl>
    implements _$$LocationSearchResponseImplCopyWith<$Res> {
  __$$LocationSearchResponseImplCopyWithImpl(
      _$LocationSearchResponseImpl _value,
      $Res Function(_$LocationSearchResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? locations = freezed,
  }) {
    return _then(_$LocationSearchResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      locations: freezed == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Location?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationSearchResponseImpl implements _LocationSearchResponse {
  _$LocationSearchResponseImpl(
      {@JsonKey(name: 'message') this.message,
      @JsonKey(name: 'locations') final List<Location?>? locations})
      : _locations = locations;

  factory _$LocationSearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationSearchResponseImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<Location?>? _locations;
  @override
  @JsonKey(name: 'locations')
  List<Location?>? get locations {
    final value = _locations;
    if (value == null) return null;
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LocationSearchResponse(message: $message, locations: $locations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationSearchResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_locations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationSearchResponseImplCopyWith<_$LocationSearchResponseImpl>
      get copyWith => __$$LocationSearchResponseImplCopyWithImpl<
          _$LocationSearchResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationSearchResponseImplToJson(
      this,
    );
  }
}

abstract class _LocationSearchResponse implements LocationSearchResponse {
  factory _LocationSearchResponse(
          {@JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'locations') final List<Location?>? locations}) =
      _$LocationSearchResponseImpl;

  factory _LocationSearchResponse.fromJson(Map<String, dynamic> json) =
      _$LocationSearchResponseImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'locations')
  List<Location?>? get locations;
  @override
  @JsonKey(ignore: true)
  _$$LocationSearchResponseImplCopyWith<_$LocationSearchResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
