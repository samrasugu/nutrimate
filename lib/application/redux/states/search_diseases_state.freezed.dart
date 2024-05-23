// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_diseases_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchDiseasesState _$SearchDiseasesStateFromJson(Map<String, dynamic> json) {
  return _SearchDiseasesState.fromJson(json);
}

/// @nodoc
mixin _$SearchDiseasesState {
  List<Disease?>? get searchedDiseases => throw _privateConstructorUsedError;
  List<Disease?>? get selectedDiseases => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchDiseasesStateCopyWith<SearchDiseasesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDiseasesStateCopyWith<$Res> {
  factory $SearchDiseasesStateCopyWith(
          SearchDiseasesState value, $Res Function(SearchDiseasesState) then) =
      _$SearchDiseasesStateCopyWithImpl<$Res, SearchDiseasesState>;
  @useResult
  $Res call(
      {List<Disease?>? searchedDiseases, List<Disease?>? selectedDiseases});
}

/// @nodoc
class _$SearchDiseasesStateCopyWithImpl<$Res, $Val extends SearchDiseasesState>
    implements $SearchDiseasesStateCopyWith<$Res> {
  _$SearchDiseasesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchedDiseases = freezed,
    Object? selectedDiseases = freezed,
  }) {
    return _then(_value.copyWith(
      searchedDiseases: freezed == searchedDiseases
          ? _value.searchedDiseases
          : searchedDiseases // ignore: cast_nullable_to_non_nullable
              as List<Disease?>?,
      selectedDiseases: freezed == selectedDiseases
          ? _value.selectedDiseases
          : selectedDiseases // ignore: cast_nullable_to_non_nullable
              as List<Disease?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchDiseasesStateImplCopyWith<$Res>
    implements $SearchDiseasesStateCopyWith<$Res> {
  factory _$$SearchDiseasesStateImplCopyWith(_$SearchDiseasesStateImpl value,
          $Res Function(_$SearchDiseasesStateImpl) then) =
      __$$SearchDiseasesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Disease?>? searchedDiseases, List<Disease?>? selectedDiseases});
}

/// @nodoc
class __$$SearchDiseasesStateImplCopyWithImpl<$Res>
    extends _$SearchDiseasesStateCopyWithImpl<$Res, _$SearchDiseasesStateImpl>
    implements _$$SearchDiseasesStateImplCopyWith<$Res> {
  __$$SearchDiseasesStateImplCopyWithImpl(_$SearchDiseasesStateImpl _value,
      $Res Function(_$SearchDiseasesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchedDiseases = freezed,
    Object? selectedDiseases = freezed,
  }) {
    return _then(_$SearchDiseasesStateImpl(
      searchedDiseases: freezed == searchedDiseases
          ? _value._searchedDiseases
          : searchedDiseases // ignore: cast_nullable_to_non_nullable
              as List<Disease?>?,
      selectedDiseases: freezed == selectedDiseases
          ? _value._selectedDiseases
          : selectedDiseases // ignore: cast_nullable_to_non_nullable
              as List<Disease?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchDiseasesStateImpl implements _SearchDiseasesState {
  _$SearchDiseasesStateImpl(
      {final List<Disease?>? searchedDiseases,
      final List<Disease?>? selectedDiseases})
      : _searchedDiseases = searchedDiseases,
        _selectedDiseases = selectedDiseases;

  factory _$SearchDiseasesStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchDiseasesStateImplFromJson(json);

  final List<Disease?>? _searchedDiseases;
  @override
  List<Disease?>? get searchedDiseases {
    final value = _searchedDiseases;
    if (value == null) return null;
    if (_searchedDiseases is EqualUnmodifiableListView)
      return _searchedDiseases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Disease?>? _selectedDiseases;
  @override
  List<Disease?>? get selectedDiseases {
    final value = _selectedDiseases;
    if (value == null) return null;
    if (_selectedDiseases is EqualUnmodifiableListView)
      return _selectedDiseases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchDiseasesState(searchedDiseases: $searchedDiseases, selectedDiseases: $selectedDiseases)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchDiseasesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._searchedDiseases, _searchedDiseases) &&
            const DeepCollectionEquality()
                .equals(other._selectedDiseases, _selectedDiseases));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_searchedDiseases),
      const DeepCollectionEquality().hash(_selectedDiseases));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchDiseasesStateImplCopyWith<_$SearchDiseasesStateImpl> get copyWith =>
      __$$SearchDiseasesStateImplCopyWithImpl<_$SearchDiseasesStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchDiseasesStateImplToJson(
      this,
    );
  }
}

abstract class _SearchDiseasesState implements SearchDiseasesState {
  factory _SearchDiseasesState(
      {final List<Disease?>? searchedDiseases,
      final List<Disease?>? selectedDiseases}) = _$SearchDiseasesStateImpl;

  factory _SearchDiseasesState.fromJson(Map<String, dynamic> json) =
      _$SearchDiseasesStateImpl.fromJson;

  @override
  List<Disease?>? get searchedDiseases;
  @override
  List<Disease?>? get selectedDiseases;
  @override
  @JsonKey(ignore: true)
  _$$SearchDiseasesStateImplCopyWith<_$SearchDiseasesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
