// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BranchModelImpl _$$BranchModelImplFromJson(Map<String, dynamic> json) =>
    _$BranchModelImpl(
      company_id: json['main_master_company_id'] as String?,
      id: json['master_branch_id'] as String?,
      name: json['master_branch_name'] as String?,
      nameEn: json['master_branch_name_eng'] as String?,
      taxId: json['master_branch_taxid'] as String?,
      email: json['master_branch_email'] as String?,
      phoneNumber: json['master_branch_tel'] as String?,
      address: json['master_branch_addr'] as String?,
      districtId: json['master_addr_district_id'] as String?,
      prefectureId: json['master_addr_prefecture_id'] as String?,
      provinceId: json['master_addr_province_id'] as String?,
      postcodeId: json['master_addr_postcode_id'] as String?,
      active: json['master_branch_active'] as String?,
      typeId: json['master_asset_type_id'] as bool?,
      regionId: json['master_addr_region_id'] as String?,
      evidenceFile: json['master_branch_evidence_file'] as String?,
      updateAt: json['user_login_id_update'] as String?,
    );

Map<String, dynamic> _$$BranchModelImplToJson(_$BranchModelImpl instance) =>
    <String, dynamic>{
      'main_master_company_id': instance.company_id,
      'master_branch_id': instance.id,
      'master_branch_name': instance.name,
      'master_branch_name_eng': instance.nameEn,
      'master_branch_taxid': instance.taxId,
      'master_branch_email': instance.email,
      'master_branch_tel': instance.phoneNumber,
      'master_branch_addr': instance.address,
      'master_addr_district_id': instance.districtId,
      'master_addr_prefecture_id': instance.prefectureId,
      'master_addr_province_id': instance.provinceId,
      'master_addr_postcode_id': instance.postcodeId,
      'master_branch_active': instance.active,
      'master_asset_type_id': instance.typeId,
      'master_addr_region_id': instance.regionId,
      'master_branch_evidence_file': instance.evidenceFile,
      'user_login_id_update': instance.updateAt,
    };
