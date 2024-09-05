// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BranchModel _$BranchModelFromJson(Map<String, dynamic> json) {
  return _BranchModel.fromJson(json);
}

/// @nodoc
mixin _$BranchModel {
  @JsonKey(name: 'main_master_company_id')
  String? get company_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_branch_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_branch_name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_branch_name_eng')
  String? get nameEn => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_branch_taxid')
  String? get taxId => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_branch_email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_branch_tel')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_branch_addr')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_addr_district_id')
  String? get districtId => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_addr_prefecture_id')
  String? get prefectureId => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_addr_province_id')
  String? get provinceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_addr_postcode_id')
  String? get postcodeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_branch_active')
  String? get active => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_asset_type_id')
  bool? get typeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_addr_region_id')
  String? get regionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_branch_evidence_file')
  String? get evidenceFile => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_login_id_update')
  String? get updateAt => throw _privateConstructorUsedError;

  /// Serializes this BranchModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BranchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BranchModelCopyWith<BranchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchModelCopyWith<$Res> {
  factory $BranchModelCopyWith(
          BranchModel value, $Res Function(BranchModel) then) =
      _$BranchModelCopyWithImpl<$Res, BranchModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'main_master_company_id') String? company_id,
      @JsonKey(name: 'master_branch_id') String? id,
      @JsonKey(name: 'master_branch_name') String? name,
      @JsonKey(name: 'master_branch_name_eng') String? nameEn,
      @JsonKey(name: 'master_branch_taxid') String? taxId,
      @JsonKey(name: 'master_branch_email') String? email,
      @JsonKey(name: 'master_branch_tel') String? phoneNumber,
      @JsonKey(name: 'master_branch_addr') String? address,
      @JsonKey(name: 'master_addr_district_id') String? districtId,
      @JsonKey(name: 'master_addr_prefecture_id') String? prefectureId,
      @JsonKey(name: 'master_addr_province_id') String? provinceId,
      @JsonKey(name: 'master_addr_postcode_id') String? postcodeId,
      @JsonKey(name: 'master_branch_active') String? active,
      @JsonKey(name: 'master_asset_type_id') bool? typeId,
      @JsonKey(name: 'master_addr_region_id') String? regionId,
      @JsonKey(name: 'master_branch_evidence_file') String? evidenceFile,
      @JsonKey(name: 'user_login_id_update') String? updateAt});
}

/// @nodoc
class _$BranchModelCopyWithImpl<$Res, $Val extends BranchModel>
    implements $BranchModelCopyWith<$Res> {
  _$BranchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BranchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company_id = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? nameEn = freezed,
    Object? taxId = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? districtId = freezed,
    Object? prefectureId = freezed,
    Object? provinceId = freezed,
    Object? postcodeId = freezed,
    Object? active = freezed,
    Object? typeId = freezed,
    Object? regionId = freezed,
    Object? evidenceFile = freezed,
    Object? updateAt = freezed,
  }) {
    return _then(_value.copyWith(
      company_id: freezed == company_id
          ? _value.company_id
          : company_id // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameEn: freezed == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String?,
      taxId: freezed == taxId
          ? _value.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as String?,
      prefectureId: freezed == prefectureId
          ? _value.prefectureId
          : prefectureId // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceId: freezed == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String?,
      postcodeId: freezed == postcodeId
          ? _value.postcodeId
          : postcodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String?,
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as bool?,
      regionId: freezed == regionId
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as String?,
      evidenceFile: freezed == evidenceFile
          ? _value.evidenceFile
          : evidenceFile // ignore: cast_nullable_to_non_nullable
              as String?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BranchModelImplCopyWith<$Res>
    implements $BranchModelCopyWith<$Res> {
  factory _$$BranchModelImplCopyWith(
          _$BranchModelImpl value, $Res Function(_$BranchModelImpl) then) =
      __$$BranchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'main_master_company_id') String? company_id,
      @JsonKey(name: 'master_branch_id') String? id,
      @JsonKey(name: 'master_branch_name') String? name,
      @JsonKey(name: 'master_branch_name_eng') String? nameEn,
      @JsonKey(name: 'master_branch_taxid') String? taxId,
      @JsonKey(name: 'master_branch_email') String? email,
      @JsonKey(name: 'master_branch_tel') String? phoneNumber,
      @JsonKey(name: 'master_branch_addr') String? address,
      @JsonKey(name: 'master_addr_district_id') String? districtId,
      @JsonKey(name: 'master_addr_prefecture_id') String? prefectureId,
      @JsonKey(name: 'master_addr_province_id') String? provinceId,
      @JsonKey(name: 'master_addr_postcode_id') String? postcodeId,
      @JsonKey(name: 'master_branch_active') String? active,
      @JsonKey(name: 'master_asset_type_id') bool? typeId,
      @JsonKey(name: 'master_addr_region_id') String? regionId,
      @JsonKey(name: 'master_branch_evidence_file') String? evidenceFile,
      @JsonKey(name: 'user_login_id_update') String? updateAt});
}

/// @nodoc
class __$$BranchModelImplCopyWithImpl<$Res>
    extends _$BranchModelCopyWithImpl<$Res, _$BranchModelImpl>
    implements _$$BranchModelImplCopyWith<$Res> {
  __$$BranchModelImplCopyWithImpl(
      _$BranchModelImpl _value, $Res Function(_$BranchModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BranchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company_id = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? nameEn = freezed,
    Object? taxId = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? districtId = freezed,
    Object? prefectureId = freezed,
    Object? provinceId = freezed,
    Object? postcodeId = freezed,
    Object? active = freezed,
    Object? typeId = freezed,
    Object? regionId = freezed,
    Object? evidenceFile = freezed,
    Object? updateAt = freezed,
  }) {
    return _then(_$BranchModelImpl(
      company_id: freezed == company_id
          ? _value.company_id
          : company_id // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameEn: freezed == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String?,
      taxId: freezed == taxId
          ? _value.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as String?,
      prefectureId: freezed == prefectureId
          ? _value.prefectureId
          : prefectureId // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceId: freezed == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String?,
      postcodeId: freezed == postcodeId
          ? _value.postcodeId
          : postcodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String?,
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as bool?,
      regionId: freezed == regionId
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as String?,
      evidenceFile: freezed == evidenceFile
          ? _value.evidenceFile
          : evidenceFile // ignore: cast_nullable_to_non_nullable
              as String?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BranchModelImpl implements _BranchModel {
  const _$BranchModelImpl(
      {@JsonKey(name: 'main_master_company_id') this.company_id,
      @JsonKey(name: 'master_branch_id') this.id,
      @JsonKey(name: 'master_branch_name') this.name,
      @JsonKey(name: 'master_branch_name_eng') this.nameEn,
      @JsonKey(name: 'master_branch_taxid') this.taxId,
      @JsonKey(name: 'master_branch_email') this.email,
      @JsonKey(name: 'master_branch_tel') this.phoneNumber,
      @JsonKey(name: 'master_branch_addr') this.address,
      @JsonKey(name: 'master_addr_district_id') this.districtId,
      @JsonKey(name: 'master_addr_prefecture_id') this.prefectureId,
      @JsonKey(name: 'master_addr_province_id') this.provinceId,
      @JsonKey(name: 'master_addr_postcode_id') this.postcodeId,
      @JsonKey(name: 'master_branch_active') this.active,
      @JsonKey(name: 'master_asset_type_id') this.typeId,
      @JsonKey(name: 'master_addr_region_id') this.regionId,
      @JsonKey(name: 'master_branch_evidence_file') this.evidenceFile,
      @JsonKey(name: 'user_login_id_update') this.updateAt});

  factory _$BranchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchModelImplFromJson(json);

  @override
  @JsonKey(name: 'main_master_company_id')
  final String? company_id;
  @override
  @JsonKey(name: 'master_branch_id')
  final String? id;
  @override
  @JsonKey(name: 'master_branch_name')
  final String? name;
  @override
  @JsonKey(name: 'master_branch_name_eng')
  final String? nameEn;
  @override
  @JsonKey(name: 'master_branch_taxid')
  final String? taxId;
  @override
  @JsonKey(name: 'master_branch_email')
  final String? email;
  @override
  @JsonKey(name: 'master_branch_tel')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'master_branch_addr')
  final String? address;
  @override
  @JsonKey(name: 'master_addr_district_id')
  final String? districtId;
  @override
  @JsonKey(name: 'master_addr_prefecture_id')
  final String? prefectureId;
  @override
  @JsonKey(name: 'master_addr_province_id')
  final String? provinceId;
  @override
  @JsonKey(name: 'master_addr_postcode_id')
  final String? postcodeId;
  @override
  @JsonKey(name: 'master_branch_active')
  final String? active;
  @override
  @JsonKey(name: 'master_asset_type_id')
  final bool? typeId;
  @override
  @JsonKey(name: 'master_addr_region_id')
  final String? regionId;
  @override
  @JsonKey(name: 'master_branch_evidence_file')
  final String? evidenceFile;
  @override
  @JsonKey(name: 'user_login_id_update')
  final String? updateAt;

  @override
  String toString() {
    return 'BranchModel(company_id: $company_id, id: $id, name: $name, nameEn: $nameEn, taxId: $taxId, email: $email, phoneNumber: $phoneNumber, address: $address, districtId: $districtId, prefectureId: $prefectureId, provinceId: $provinceId, postcodeId: $postcodeId, active: $active, typeId: $typeId, regionId: $regionId, evidenceFile: $evidenceFile, updateAt: $updateAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchModelImpl &&
            (identical(other.company_id, company_id) ||
                other.company_id == company_id) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.taxId, taxId) || other.taxId == taxId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.districtId, districtId) ||
                other.districtId == districtId) &&
            (identical(other.prefectureId, prefectureId) ||
                other.prefectureId == prefectureId) &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId) &&
            (identical(other.postcodeId, postcodeId) ||
                other.postcodeId == postcodeId) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            (identical(other.regionId, regionId) ||
                other.regionId == regionId) &&
            (identical(other.evidenceFile, evidenceFile) ||
                other.evidenceFile == evidenceFile) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      company_id,
      id,
      name,
      nameEn,
      taxId,
      email,
      phoneNumber,
      address,
      districtId,
      prefectureId,
      provinceId,
      postcodeId,
      active,
      typeId,
      regionId,
      evidenceFile,
      updateAt);

  /// Create a copy of BranchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchModelImplCopyWith<_$BranchModelImpl> get copyWith =>
      __$$BranchModelImplCopyWithImpl<_$BranchModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchModelImplToJson(
      this,
    );
  }
}

abstract class _BranchModel implements BranchModel {
  const factory _BranchModel(
      {@JsonKey(name: 'main_master_company_id') final String? company_id,
      @JsonKey(name: 'master_branch_id') final String? id,
      @JsonKey(name: 'master_branch_name') final String? name,
      @JsonKey(name: 'master_branch_name_eng') final String? nameEn,
      @JsonKey(name: 'master_branch_taxid') final String? taxId,
      @JsonKey(name: 'master_branch_email') final String? email,
      @JsonKey(name: 'master_branch_tel') final String? phoneNumber,
      @JsonKey(name: 'master_branch_addr') final String? address,
      @JsonKey(name: 'master_addr_district_id') final String? districtId,
      @JsonKey(name: 'master_addr_prefecture_id') final String? prefectureId,
      @JsonKey(name: 'master_addr_province_id') final String? provinceId,
      @JsonKey(name: 'master_addr_postcode_id') final String? postcodeId,
      @JsonKey(name: 'master_branch_active') final String? active,
      @JsonKey(name: 'master_asset_type_id') final bool? typeId,
      @JsonKey(name: 'master_addr_region_id') final String? regionId,
      @JsonKey(name: 'master_branch_evidence_file') final String? evidenceFile,
      @JsonKey(name: 'user_login_id_update')
      final String? updateAt}) = _$BranchModelImpl;

  factory _BranchModel.fromJson(Map<String, dynamic> json) =
      _$BranchModelImpl.fromJson;

  @override
  @JsonKey(name: 'main_master_company_id')
  String? get company_id;
  @override
  @JsonKey(name: 'master_branch_id')
  String? get id;
  @override
  @JsonKey(name: 'master_branch_name')
  String? get name;
  @override
  @JsonKey(name: 'master_branch_name_eng')
  String? get nameEn;
  @override
  @JsonKey(name: 'master_branch_taxid')
  String? get taxId;
  @override
  @JsonKey(name: 'master_branch_email')
  String? get email;
  @override
  @JsonKey(name: 'master_branch_tel')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'master_branch_addr')
  String? get address;
  @override
  @JsonKey(name: 'master_addr_district_id')
  String? get districtId;
  @override
  @JsonKey(name: 'master_addr_prefecture_id')
  String? get prefectureId;
  @override
  @JsonKey(name: 'master_addr_province_id')
  String? get provinceId;
  @override
  @JsonKey(name: 'master_addr_postcode_id')
  String? get postcodeId;
  @override
  @JsonKey(name: 'master_branch_active')
  String? get active;
  @override
  @JsonKey(name: 'master_asset_type_id')
  bool? get typeId;
  @override
  @JsonKey(name: 'master_addr_region_id')
  String? get regionId;
  @override
  @JsonKey(name: 'master_branch_evidence_file')
  String? get evidenceFile;
  @override
  @JsonKey(name: 'user_login_id_update')
  String? get updateAt;

  /// Create a copy of BranchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BranchModelImplCopyWith<_$BranchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
