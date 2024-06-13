// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disease_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiseaseSearchResponse _$DiseaseSearchResponseFromJson(
    Map<String, dynamic> json) {
  return _DiseaseSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$DiseaseSearchResponse {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'diseases')
  List<Disease?>? get diseases => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiseaseSearchResponseCopyWith<DiseaseSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiseaseSearchResponseCopyWith<$Res> {
  factory $DiseaseSearchResponseCopyWith(DiseaseSearchResponse value,
          $Res Function(DiseaseSearchResponse) then) =
      _$DiseaseSearchResponseCopyWithImpl<$Res, DiseaseSearchResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'diseases') List<Disease?>? diseases});
}

/// @nodoc
class _$DiseaseSearchResponseCopyWithImpl<$Res,
        $Val extends DiseaseSearchResponse>
    implements $DiseaseSearchResponseCopyWith<$Res> {
  _$DiseaseSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? diseases = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      diseases: freezed == diseases
          ? _value.diseases
          : diseases // ignore: cast_nullable_to_non_nullable
              as List<Disease?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiseaseSearchResponseImplCopyWith<$Res>
    implements $DiseaseSearchResponseCopyWith<$Res> {
  factory _$$DiseaseSearchResponseImplCopyWith(
          _$DiseaseSearchResponseImpl value,
          $Res Function(_$DiseaseSearchResponseImpl) then) =
      __$$DiseaseSearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'diseases') List<Disease?>? diseases});
}

/// @nodoc
class __$$DiseaseSearchResponseImplCopyWithImpl<$Res>
    extends _$DiseaseSearchResponseCopyWithImpl<$Res,
        _$DiseaseSearchResponseImpl>
    implements _$$DiseaseSearchResponseImplCopyWith<$Res> {
  __$$DiseaseSearchResponseImplCopyWithImpl(_$DiseaseSearchResponseImpl _value,
      $Res Function(_$DiseaseSearchResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? diseases = freezed,
  }) {
    return _then(_$DiseaseSearchResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      diseases: freezed == diseases
          ? _value._diseases
          : diseases // ignore: cast_nullable_to_non_nullable
              as List<Disease?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiseaseSearchResponseImpl implements _DiseaseSearchResponse {
  _$DiseaseSearchResponseImpl(
      {@JsonKey(name: 'message') this.message,
      @JsonKey(name: 'diseases') final List<Disease?>? diseases})
      : _diseases = diseases;

  factory _$DiseaseSearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiseaseSearchResponseImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<Disease?>? _diseases;
  @override
  @JsonKey(name: 'diseases')
  List<Disease?>? get diseases {
    final value = _diseases;
    if (value == null) return null;
    if (_diseases is EqualUnmodifiableListView) return _diseases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DiseaseSearchResponse(message: $message, diseases: $diseases)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiseaseSearchResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._diseases, _diseases));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_diseases));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiseaseSearchResponseImplCopyWith<_$DiseaseSearchResponseImpl>
      get copyWith => __$$DiseaseSearchResponseImplCopyWithImpl<
          _$DiseaseSearchResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiseaseSearchResponseImplToJson(
      this,
    );
  }
}

abstract class _DiseaseSearchResponse implements DiseaseSearchResponse {
  factory _DiseaseSearchResponse(
          {@JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'diseases') final List<Disease?>? diseases}) =
      _$DiseaseSearchResponseImpl;

  factory _DiseaseSearchResponse.fromJson(Map<String, dynamic> json) =
      _$DiseaseSearchResponseImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'diseases')
  List<Disease?>? get diseases;
  @override
  @JsonKey(ignore: true)
  _$$DiseaseSearchResponseImplCopyWith<_$DiseaseSearchResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
