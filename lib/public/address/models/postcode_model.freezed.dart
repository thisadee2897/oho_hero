// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postcode_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostCodeModel _$PostCodeModelFromJson(Map<String, dynamic> json) {
  return _PostCodeModel.fromJson(json);
}

/// @nodoc
mixin _$PostCodeModel {
  @JsonKey(name: 'master_addr_postcode_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_addr_postcode_code')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_addr_district_id')
  String? get subDistrictId => throw _privateConstructorUsedError;

  /// Serializes this PostCodeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostCodeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCodeModelCopyWith<PostCodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCodeModelCopyWith<$Res> {
  factory $PostCodeModelCopyWith(
          PostCodeModel value, $Res Function(PostCodeModel) then) =
      _$PostCodeModelCopyWithImpl<$Res, PostCodeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'master_addr_postcode_id') String? id,
      @JsonKey(name: 'master_addr_postcode_code') String? code,
      @JsonKey(name: 'master_addr_district_id') String? subDistrictId});
}

/// @nodoc
class _$PostCodeModelCopyWithImpl<$Res, $Val extends PostCodeModel>
    implements $PostCodeModelCopyWith<$Res> {
  _$PostCodeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostCodeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? subDistrictId = freezed,
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
      subDistrictId: freezed == subDistrictId
          ? _value.subDistrictId
          : subDistrictId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostCodeModelImplCopyWith<$Res>
    implements $PostCodeModelCopyWith<$Res> {
  factory _$$PostCodeModelImplCopyWith(
          _$PostCodeModelImpl value, $Res Function(_$PostCodeModelImpl) then) =
      __$$PostCodeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'master_addr_postcode_id') String? id,
      @JsonKey(name: 'master_addr_postcode_code') String? code,
      @JsonKey(name: 'master_addr_district_id') String? subDistrictId});
}

/// @nodoc
class __$$PostCodeModelImplCopyWithImpl<$Res>
    extends _$PostCodeModelCopyWithImpl<$Res, _$PostCodeModelImpl>
    implements _$$PostCodeModelImplCopyWith<$Res> {
  __$$PostCodeModelImplCopyWithImpl(
      _$PostCodeModelImpl _value, $Res Function(_$PostCodeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostCodeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? subDistrictId = freezed,
  }) {
    return _then(_$PostCodeModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      subDistrictId: freezed == subDistrictId
          ? _value.subDistrictId
          : subDistrictId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostCodeModelImpl implements _PostCodeModel {
  const _$PostCodeModelImpl(
      {@JsonKey(name: 'master_addr_postcode_id') this.id,
      @JsonKey(name: 'master_addr_postcode_code') this.code,
      @JsonKey(name: 'master_addr_district_id') this.subDistrictId});

  factory _$PostCodeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostCodeModelImplFromJson(json);

  @override
  @JsonKey(name: 'master_addr_postcode_id')
  final String? id;
  @override
  @JsonKey(name: 'master_addr_postcode_code')
  final String? code;
  @override
  @JsonKey(name: 'master_addr_district_id')
  final String? subDistrictId;

  @override
  String toString() {
    return 'PostCodeModel(id: $id, code: $code, subDistrictId: $subDistrictId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCodeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.subDistrictId, subDistrictId) ||
                other.subDistrictId == subDistrictId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, subDistrictId);

  /// Create a copy of PostCodeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCodeModelImplCopyWith<_$PostCodeModelImpl> get copyWith =>
      __$$PostCodeModelImplCopyWithImpl<_$PostCodeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostCodeModelImplToJson(
      this,
    );
  }
}

abstract class _PostCodeModel implements PostCodeModel {
  const factory _PostCodeModel(
      {@JsonKey(name: 'master_addr_postcode_id') final String? id,
      @JsonKey(name: 'master_addr_postcode_code') final String? code,
      @JsonKey(name: 'master_addr_district_id')
      final String? subDistrictId}) = _$PostCodeModelImpl;

  factory _PostCodeModel.fromJson(Map<String, dynamic> json) =
      _$PostCodeModelImpl.fromJson;

  @override
  @JsonKey(name: 'master_addr_postcode_id')
  String? get id;
  @override
  @JsonKey(name: 'master_addr_postcode_code')
  String? get code;
  @override
  @JsonKey(name: 'master_addr_district_id')
  String? get subDistrictId;

  /// Create a copy of PostCodeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostCodeModelImplCopyWith<_$PostCodeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
