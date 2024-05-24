// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_location_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchLocationState _$SearchLocationStateFromJson(Map<String, dynamic> json) {
  return _SearchLocationState.fromJson(json);
}

/// @nodoc
mixin _$SearchLocationState {
  List<Location?>? get searchedLocations => throw _privateConstructorUsedError;
  Location? get selectedLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchLocationStateCopyWith<SearchLocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchLocationStateCopyWith<$Res> {
  factory $SearchLocationStateCopyWith(
          SearchLocationState value, $Res Function(SearchLocationState) then) =
      _$SearchLocationStateCopyWithImpl<$Res, SearchLocationState>;
  @useResult
  $Res call({List<Location?>? searchedLocations, Location? selectedLocation});

  $LocationCopyWith<$Res>? get selectedLocation;
}

/// @nodoc
class _$SearchLocationStateCopyWithImpl<$Res, $Val extends SearchLocationState>
    implements $SearchLocationStateCopyWith<$Res> {
  _$SearchLocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchedLocations = freezed,
    Object? selectedLocation = freezed,
  }) {
    return _then(_value.copyWith(
      searchedLocations: freezed == searchedLocations
          ? _value.searchedLocations
          : searchedLocations // ignore: cast_nullable_to_non_nullable
              as List<Location?>?,
      selectedLocation: freezed == selectedLocation
          ? _value.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get selectedLocation {
    if (_value.selectedLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.selectedLocation!, (value) {
      return _then(_value.copyWith(selectedLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchLocationStateImplCopyWith<$Res>
    implements $SearchLocationStateCopyWith<$Res> {
  factory _$$SearchLocationStateImplCopyWith(_$SearchLocationStateImpl value,
          $Res Function(_$SearchLocationStateImpl) then) =
      __$$SearchLocationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Location?>? searchedLocations, Location? selectedLocation});

  @override
  $LocationCopyWith<$Res>? get selectedLocation;
}

/// @nodoc
class __$$SearchLocationStateImplCopyWithImpl<$Res>
    extends _$SearchLocationStateCopyWithImpl<$Res, _$SearchLocationStateImpl>
    implements _$$SearchLocationStateImplCopyWith<$Res> {
  __$$SearchLocationStateImplCopyWithImpl(_$SearchLocationStateImpl _value,
      $Res Function(_$SearchLocationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchedLocations = freezed,
    Object? selectedLocation = freezed,
  }) {
    return _then(_$SearchLocationStateImpl(
      searchedLocations: freezed == searchedLocations
          ? _value._searchedLocations
          : searchedLocations // ignore: cast_nullable_to_non_nullable
              as List<Location?>?,
      selectedLocation: freezed == selectedLocation
          ? _value.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchLocationStateImpl implements _SearchLocationState {
  _$SearchLocationStateImpl(
      {final List<Location?>? searchedLocations, this.selectedLocation})
      : _searchedLocations = searchedLocations;

  factory _$SearchLocationStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchLocationStateImplFromJson(json);

  final List<Location?>? _searchedLocations;
  @override
  List<Location?>? get searchedLocations {
    final value = _searchedLocations;
    if (value == null) return null;
    if (_searchedLocations is EqualUnmodifiableListView)
      return _searchedLocations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Location? selectedLocation;

  @override
  String toString() {
    return 'SearchLocationState(searchedLocations: $searchedLocations, selectedLocation: $selectedLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLocationStateImpl &&
            const DeepCollectionEquality()
                .equals(other._searchedLocations, _searchedLocations) &&
            (identical(other.selectedLocation, selectedLocation) ||
                other.selectedLocation == selectedLocation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_searchedLocations),
      selectedLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLocationStateImplCopyWith<_$SearchLocationStateImpl> get copyWith =>
      __$$SearchLocationStateImplCopyWithImpl<_$SearchLocationStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchLocationStateImplToJson(
      this,
    );
  }
}

abstract class _SearchLocationState implements SearchLocationState {
  factory _SearchLocationState(
      {final List<Location?>? searchedLocations,
      final Location? selectedLocation}) = _$SearchLocationStateImpl;

  factory _SearchLocationState.fromJson(Map<String, dynamic> json) =
      _$SearchLocationStateImpl.fromJson;

  @override
  List<Location?>? get searchedLocations;
  @override
  Location? get selectedLocation;
  @override
  @JsonKey(ignore: true)
  _$$SearchLocationStateImplCopyWith<_$SearchLocationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
