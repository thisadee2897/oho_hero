// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'district_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DistrictModel _$DistrictModelFromJson(Map<String, dynamic> json) {
  return _DistrictModelModel.fromJson(json);
}

/// @nodoc
mixin _$DistrictModel {
  @JsonKey(name: 'master_addr_prefecture_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_addr_prefecture_name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_addr_prefecture_name_eng')
  String? get nameEN => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_addr_province_id')
  String? get provinceId => throw _privateConstructorUsedError;

  /// Serializes this DistrictModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DistrictModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DistrictModelCopyWith<DistrictModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrictModelCopyWith<$Res> {
  factory $DistrictModelCopyWith(
          DistrictModel value, $Res Function(DistrictModel) then) =
      _$DistrictModelCopyWithImpl<$Res, DistrictModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'master_addr_prefecture_id') String? id,
      @JsonKey(name: 'master_addr_prefecture_name') String? name,
      @JsonKey(name: 'master_addr_prefecture_name_eng') String? nameEN,
      @JsonKey(name: 'master_addr_province_id') String? provinceId});
}

/// @nodoc
class _$DistrictModelCopyWithImpl<$Res, $Val extends DistrictModel>
    implements $DistrictModelCopyWith<$Res> {
  _$DistrictModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DistrictModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? nameEN = freezed,
    Object? provinceId = freezed,
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
      provinceId: freezed == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DistrictModelModelImplCopyWith<$Res>
    implements $DistrictModelCopyWith<$Res> {
  factory _$$DistrictModelModelImplCopyWith(_$DistrictModelModelImpl value,
          $Res Function(_$DistrictModelModelImpl) then) =
      __$$DistrictModelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'master_addr_prefecture_id') String? id,
      @JsonKey(name: 'master_addr_prefecture_name') String? name,
      @JsonKey(name: 'master_addr_prefecture_name_eng') String? nameEN,
      @JsonKey(name: 'master_addr_province_id') String? provinceId});
}

/// @nodoc
class __$$DistrictModelModelImplCopyWithImpl<$Res>
    extends _$DistrictModelCopyWithImpl<$Res, _$DistrictModelModelImpl>
    implements _$$DistrictModelModelImplCopyWith<$Res> {
  __$$DistrictModelModelImplCopyWithImpl(_$DistrictModelModelImpl _value,
      $Res Function(_$DistrictModelModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DistrictModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? nameEN = freezed,
    Object? provinceId = freezed,
  }) {
    return _then(_$DistrictModelModelImpl(
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
      provinceId: freezed == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DistrictModelModelImpl implements _DistrictModelModel {
  const _$DistrictModelModelImpl(
      {@JsonKey(name: 'master_addr_prefecture_id') this.id,
      @JsonKey(name: 'master_addr_prefecture_name') this.name,
      @JsonKey(name: 'master_addr_prefecture_name_eng') this.nameEN,
      @JsonKey(name: 'master_addr_province_id') this.provinceId});

  factory _$DistrictModelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistrictModelModelImplFromJson(json);

  @override
  @JsonKey(name: 'master_addr_prefecture_id')
  final String? id;
  @override
  @JsonKey(name: 'master_addr_prefecture_name')
  final String? name;
  @override
  @JsonKey(name: 'master_addr_prefecture_name_eng')
  final String? nameEN;
  @override
  @JsonKey(name: 'master_addr_province_id')
  final String? provinceId;

  @override
  String toString() {
    return 'DistrictModel(id: $id, name: $name, nameEN: $nameEN, provinceId: $provinceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistrictModelModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameEN, nameEN) || other.nameEN == nameEN) &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, nameEN, provinceId);

  /// Create a copy of DistrictModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DistrictModelModelImplCopyWith<_$DistrictModelModelImpl> get copyWith =>
      __$$DistrictModelModelImplCopyWithImpl<_$DistrictModelModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistrictModelModelImplToJson(
      this,
    );
  }
}

abstract class _DistrictModelModel implements DistrictModel {
  const factory _DistrictModelModel(
      {@JsonKey(name: 'master_addr_prefecture_id') final String? id,
      @JsonKey(name: 'master_addr_prefecture_name') final String? name,
      @JsonKey(name: 'master_addr_prefecture_name_eng') final String? nameEN,
      @JsonKey(name: 'master_addr_province_id')
      final String? provinceId}) = _$DistrictModelModelImpl;

  factory _DistrictModelModel.fromJson(Map<String, dynamic> json) =
      _$DistrictModelModelImpl.fromJson;

  @override
  @JsonKey(name: 'master_addr_prefecture_id')
  String? get id;
  @override
  @JsonKey(name: 'master_addr_prefecture_name')
  String? get name;
  @override
  @JsonKey(name: 'master_addr_prefecture_name_eng')
  String? get nameEN;
  @override
  @JsonKey(name: 'master_addr_province_id')
  String? get provinceId;

  /// Create a copy of DistrictModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DistrictModelModelImplCopyWith<_$DistrictModelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
