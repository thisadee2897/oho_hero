// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_dropdown.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UnitDropdownModel _$UnitDropdownModelFromJson(Map<String, dynamic> json) {
  return _UnitDropdownModel.fromJson(json);
}

/// @nodoc
mixin _$UnitDropdownModel {
  @JsonKey(name: 'master_unit_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_unit_code')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_unit_name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_unit_name_eng')
  String? get nameEN => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_unit_active')
  String? get active => throw _privateConstructorUsedError;

  /// Serializes this UnitDropdownModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnitDropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnitDropdownModelCopyWith<UnitDropdownModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitDropdownModelCopyWith<$Res> {
  factory $UnitDropdownModelCopyWith(
          UnitDropdownModel value, $Res Function(UnitDropdownModel) then) =
      _$UnitDropdownModelCopyWithImpl<$Res, UnitDropdownModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'master_unit_id') String? id,
      @JsonKey(name: 'master_unit_code') String? code,
      @JsonKey(name: 'master_unit_name') String? name,
      @JsonKey(name: 'master_unit_name_eng') String? nameEN,
      @JsonKey(name: 'master_unit_active') String? active});
}

/// @nodoc
class _$UnitDropdownModelCopyWithImpl<$Res, $Val extends UnitDropdownModel>
    implements $UnitDropdownModelCopyWith<$Res> {
  _$UnitDropdownModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnitDropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? nameEN = freezed,
    Object? active = freezed,
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
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnitDropdownModelImplCopyWith<$Res>
    implements $UnitDropdownModelCopyWith<$Res> {
  factory _$$UnitDropdownModelImplCopyWith(_$UnitDropdownModelImpl value,
          $Res Function(_$UnitDropdownModelImpl) then) =
      __$$UnitDropdownModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'master_unit_id') String? id,
      @JsonKey(name: 'master_unit_code') String? code,
      @JsonKey(name: 'master_unit_name') String? name,
      @JsonKey(name: 'master_unit_name_eng') String? nameEN,
      @JsonKey(name: 'master_unit_active') String? active});
}

/// @nodoc
class __$$UnitDropdownModelImplCopyWithImpl<$Res>
    extends _$UnitDropdownModelCopyWithImpl<$Res, _$UnitDropdownModelImpl>
    implements _$$UnitDropdownModelImplCopyWith<$Res> {
  __$$UnitDropdownModelImplCopyWithImpl(_$UnitDropdownModelImpl _value,
      $Res Function(_$UnitDropdownModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnitDropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? nameEN = freezed,
    Object? active = freezed,
  }) {
    return _then(_$UnitDropdownModelImpl(
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
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnitDropdownModelImpl implements _UnitDropdownModel {
  const _$UnitDropdownModelImpl(
      {@JsonKey(name: 'master_unit_id') this.id,
      @JsonKey(name: 'master_unit_code') this.code,
      @JsonKey(name: 'master_unit_name') this.name,
      @JsonKey(name: 'master_unit_name_eng') this.nameEN,
      @JsonKey(name: 'master_unit_active') this.active});

  factory _$UnitDropdownModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnitDropdownModelImplFromJson(json);

  @override
  @JsonKey(name: 'master_unit_id')
  final String? id;
  @override
  @JsonKey(name: 'master_unit_code')
  final String? code;
  @override
  @JsonKey(name: 'master_unit_name')
  final String? name;
  @override
  @JsonKey(name: 'master_unit_name_eng')
  final String? nameEN;
  @override
  @JsonKey(name: 'master_unit_active')
  final String? active;

  @override
  String toString() {
    return 'UnitDropdownModel(id: $id, code: $code, name: $name, nameEN: $nameEN, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitDropdownModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameEN, nameEN) || other.nameEN == nameEN) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, name, nameEN, active);

  /// Create a copy of UnitDropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitDropdownModelImplCopyWith<_$UnitDropdownModelImpl> get copyWith =>
      __$$UnitDropdownModelImplCopyWithImpl<_$UnitDropdownModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitDropdownModelImplToJson(
      this,
    );
  }
}

abstract class _UnitDropdownModel implements UnitDropdownModel {
  const factory _UnitDropdownModel(
          {@JsonKey(name: 'master_unit_id') final String? id,
          @JsonKey(name: 'master_unit_code') final String? code,
          @JsonKey(name: 'master_unit_name') final String? name,
          @JsonKey(name: 'master_unit_name_eng') final String? nameEN,
          @JsonKey(name: 'master_unit_active') final String? active}) =
      _$UnitDropdownModelImpl;

  factory _UnitDropdownModel.fromJson(Map<String, dynamic> json) =
      _$UnitDropdownModelImpl.fromJson;

  @override
  @JsonKey(name: 'master_unit_id')
  String? get id;
  @override
  @JsonKey(name: 'master_unit_code')
  String? get code;
  @override
  @JsonKey(name: 'master_unit_name')
  String? get name;
  @override
  @JsonKey(name: 'master_unit_name_eng')
  String? get nameEN;
  @override
  @JsonKey(name: 'master_unit_active')
  String? get active;

  /// Create a copy of UnitDropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnitDropdownModelImplCopyWith<_$UnitDropdownModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
