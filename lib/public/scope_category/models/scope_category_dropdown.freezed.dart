// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scope_category_dropdown.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScopeCategoryDropdownModel _$ScopeCategoryDropdownModelFromJson(
    Map<String, dynamic> json) {
  return _ScopeCategoryDropdownModel.fromJson(json);
}

/// @nodoc
mixin _$ScopeCategoryDropdownModel {
  @JsonKey(name: 'master_scope_category_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_scope_id')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_scope_category_name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_scope_category_name_eng')
  String? get nameEN => throw _privateConstructorUsedError;

  /// Serializes this ScopeCategoryDropdownModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScopeCategoryDropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScopeCategoryDropdownModelCopyWith<ScopeCategoryDropdownModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScopeCategoryDropdownModelCopyWith<$Res> {
  factory $ScopeCategoryDropdownModelCopyWith(ScopeCategoryDropdownModel value,
          $Res Function(ScopeCategoryDropdownModel) then) =
      _$ScopeCategoryDropdownModelCopyWithImpl<$Res,
          ScopeCategoryDropdownModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'master_scope_category_id') String? id,
      @JsonKey(name: 'master_scope_id') String? code,
      @JsonKey(name: 'master_scope_category_name') String? name,
      @JsonKey(name: 'master_scope_category_name_eng') String? nameEN});
}

/// @nodoc
class _$ScopeCategoryDropdownModelCopyWithImpl<$Res,
        $Val extends ScopeCategoryDropdownModel>
    implements $ScopeCategoryDropdownModelCopyWith<$Res> {
  _$ScopeCategoryDropdownModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScopeCategoryDropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? nameEN = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameEN: freezed == nameEN
          ? _value.nameEN
          : nameEN // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScopeCategoryDropdownModelImplCopyWith<$Res>
    implements $ScopeCategoryDropdownModelCopyWith<$Res> {
  factory _$$ScopeCategoryDropdownModelImplCopyWith(
          _$ScopeCategoryDropdownModelImpl value,
          $Res Function(_$ScopeCategoryDropdownModelImpl) then) =
      __$$ScopeCategoryDropdownModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'master_scope_category_id') String? id,
      @JsonKey(name: 'master_scope_id') String? code,
      @JsonKey(name: 'master_scope_category_name') String? name,
      @JsonKey(name: 'master_scope_category_name_eng') String? nameEN});
}

/// @nodoc
class __$$ScopeCategoryDropdownModelImplCopyWithImpl<$Res>
    extends _$ScopeCategoryDropdownModelCopyWithImpl<$Res,
        _$ScopeCategoryDropdownModelImpl>
    implements _$$ScopeCategoryDropdownModelImplCopyWith<$Res> {
  __$$ScopeCategoryDropdownModelImplCopyWithImpl(
      _$ScopeCategoryDropdownModelImpl _value,
      $Res Function(_$ScopeCategoryDropdownModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScopeCategoryDropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? nameEN = freezed,
  }) {
    return _then(_$ScopeCategoryDropdownModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameEN: freezed == nameEN
          ? _value.nameEN
          : nameEN // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScopeCategoryDropdownModelImpl implements _ScopeCategoryDropdownModel {
  const _$ScopeCategoryDropdownModelImpl(
      {@JsonKey(name: 'master_scope_category_id') this.id,
      @JsonKey(name: 'master_scope_id') this.code,
      @JsonKey(name: 'master_scope_category_name') this.name,
      @JsonKey(name: 'master_scope_category_name_eng') this.nameEN});

  factory _$ScopeCategoryDropdownModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ScopeCategoryDropdownModelImplFromJson(json);

  @override
  @JsonKey(name: 'master_scope_category_id')
  final String? id;
  @override
  @JsonKey(name: 'master_scope_id')
  final String? code;
  @override
  @JsonKey(name: 'master_scope_category_name')
  final String? name;
  @override
  @JsonKey(name: 'master_scope_category_name_eng')
  final String? nameEN;

  @override
  String toString() {
    return 'ScopeCategoryDropdownModel(id: $id, code: $code, name: $name, nameEN: $nameEN)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScopeCategoryDropdownModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameEN, nameEN) || other.nameEN == nameEN));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, name, nameEN);

  /// Create a copy of ScopeCategoryDropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScopeCategoryDropdownModelImplCopyWith<_$ScopeCategoryDropdownModelImpl>
      get copyWith => __$$ScopeCategoryDropdownModelImplCopyWithImpl<
          _$ScopeCategoryDropdownModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScopeCategoryDropdownModelImplToJson(
      this,
    );
  }
}

abstract class _ScopeCategoryDropdownModel
    implements ScopeCategoryDropdownModel {
  const factory _ScopeCategoryDropdownModel(
      {@JsonKey(name: 'master_scope_category_id') final String? id,
      @JsonKey(name: 'master_scope_id') final String? code,
      @JsonKey(name: 'master_scope_category_name') final String? name,
      @JsonKey(name: 'master_scope_category_name_eng')
      final String? nameEN}) = _$ScopeCategoryDropdownModelImpl;

  factory _ScopeCategoryDropdownModel.fromJson(Map<String, dynamic> json) =
      _$ScopeCategoryDropdownModelImpl.fromJson;

  @override
  @JsonKey(name: 'master_scope_category_id')
  String? get id;
  @override
  @JsonKey(name: 'master_scope_id')
  String? get code;
  @override
  @JsonKey(name: 'master_scope_category_name')
  String? get name;
  @override
  @JsonKey(name: 'master_scope_category_name_eng')
  String? get nameEN;

  /// Create a copy of ScopeCategoryDropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScopeCategoryDropdownModelImplCopyWith<_$ScopeCategoryDropdownModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
