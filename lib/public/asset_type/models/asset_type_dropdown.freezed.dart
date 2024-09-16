// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asset_type_dropdown.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AssetTypeDropdownModel _$AssetTypeDropdownModelFromJson(
    Map<String, dynamic> json) {
  return _AssetTypeDropdownModel.fromJson(json);
}

/// @nodoc
mixin _$AssetTypeDropdownModel {
  @JsonKey(name: 'master_scope_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_scope_name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_scope_name_eng')
  String? get nameEN => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_scope_remark')
  String? get remark => throw _privateConstructorUsedError;

  /// Serializes this AssetTypeDropdownModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssetTypeDropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssetTypeDropdownModelCopyWith<AssetTypeDropdownModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetTypeDropdownModelCopyWith<$Res> {
  factory $AssetTypeDropdownModelCopyWith(AssetTypeDropdownModel value,
          $Res Function(AssetTypeDropdownModel) then) =
      _$AssetTypeDropdownModelCopyWithImpl<$Res, AssetTypeDropdownModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'master_scope_id') String? id,
      @JsonKey(name: 'master_scope_name') String? name,
      @JsonKey(name: 'master_scope_name_eng') String? nameEN,
      @JsonKey(name: 'master_scope_remark') String? remark});
}

/// @nodoc
class _$AssetTypeDropdownModelCopyWithImpl<$Res,
        $Val extends AssetTypeDropdownModel>
    implements $AssetTypeDropdownModelCopyWith<$Res> {
  _$AssetTypeDropdownModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssetTypeDropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? nameEN = freezed,
    Object? remark = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameEN: freezed == nameEN
          ? _value.nameEN
          : nameEN // ignore: cast_nullable_to_non_nullable
              as String?,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssetTypeDropdownModelImplCopyWith<$Res>
    implements $AssetTypeDropdownModelCopyWith<$Res> {
  factory _$$AssetTypeDropdownModelImplCopyWith(
          _$AssetTypeDropdownModelImpl value,
          $Res Function(_$AssetTypeDropdownModelImpl) then) =
      __$$AssetTypeDropdownModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'master_scope_id') String? id,
      @JsonKey(name: 'master_scope_name') String? name,
      @JsonKey(name: 'master_scope_name_eng') String? nameEN,
      @JsonKey(name: 'master_scope_remark') String? remark});
}

/// @nodoc
class __$$AssetTypeDropdownModelImplCopyWithImpl<$Res>
    extends _$AssetTypeDropdownModelCopyWithImpl<$Res,
        _$AssetTypeDropdownModelImpl>
    implements _$$AssetTypeDropdownModelImplCopyWith<$Res> {
  __$$AssetTypeDropdownModelImplCopyWithImpl(
      _$AssetTypeDropdownModelImpl _value,
      $Res Function(_$AssetTypeDropdownModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssetTypeDropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? nameEN = freezed,
    Object? remark = freezed,
  }) {
    return _then(_$AssetTypeDropdownModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameEN: freezed == nameEN
          ? _value.nameEN
          : nameEN // ignore: cast_nullable_to_non_nullable
              as String?,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssetTypeDropdownModelImpl implements _AssetTypeDropdownModel {
  const _$AssetTypeDropdownModelImpl(
      {@JsonKey(name: 'master_scope_id') this.id,
      @JsonKey(name: 'master_scope_name') this.name,
      @JsonKey(name: 'master_scope_name_eng') this.nameEN,
      @JsonKey(name: 'master_scope_remark') this.remark});

  factory _$AssetTypeDropdownModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssetTypeDropdownModelImplFromJson(json);

  @override
  @JsonKey(name: 'master_scope_id')
  final String? id;
  @override
  @JsonKey(name: 'master_scope_name')
  final String? name;
  @override
  @JsonKey(name: 'master_scope_name_eng')
  final String? nameEN;
  @override
  @JsonKey(name: 'master_scope_remark')
  final String? remark;

  @override
  String toString() {
    return 'AssetTypeDropdownModel(id: $id, name: $name, nameEN: $nameEN, remark: $remark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetTypeDropdownModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameEN, nameEN) || other.nameEN == nameEN) &&
            (identical(other.remark, remark) || other.remark == remark));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, nameEN, remark);

  /// Create a copy of AssetTypeDropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetTypeDropdownModelImplCopyWith<_$AssetTypeDropdownModelImpl>
      get copyWith => __$$AssetTypeDropdownModelImplCopyWithImpl<
          _$AssetTypeDropdownModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssetTypeDropdownModelImplToJson(
      this,
    );
  }
}

abstract class _AssetTypeDropdownModel implements AssetTypeDropdownModel {
  const factory _AssetTypeDropdownModel(
          {@JsonKey(name: 'master_scope_id') final String? id,
          @JsonKey(name: 'master_scope_name') final String? name,
          @JsonKey(name: 'master_scope_name_eng') final String? nameEN,
          @JsonKey(name: 'master_scope_remark') final String? remark}) =
      _$AssetTypeDropdownModelImpl;

  factory _AssetTypeDropdownModel.fromJson(Map<String, dynamic> json) =
      _$AssetTypeDropdownModelImpl.fromJson;

  @override
  @JsonKey(name: 'master_scope_id')
  String? get id;
  @override
  @JsonKey(name: 'master_scope_name')
  String? get name;
  @override
  @JsonKey(name: 'master_scope_name_eng')
  String? get nameEN;
  @override
  @JsonKey(name: 'master_scope_remark')
  String? get remark;

  /// Create a copy of AssetTypeDropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssetTypeDropdownModelImplCopyWith<_$AssetTypeDropdownModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
