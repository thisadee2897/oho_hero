// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_form_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyFormImpl _$$CompanyFormImplFromJson(Map<String, dynamic> json) =>
    _$CompanyFormImpl(
      id: json['main_master_company_id'] as String?,
      name: json['main_master_company_name'] as String?,
      nameEn: json['main_master_company_name_eng'] as String?,
      taxId: json['main_master_company_taxid'] as String?,
      email: json['main_master_company_email'] as String?,
      phoneNumber: json['main_master_company_tel'] as String?,
      address: json['main_master_company_addr'] as String?,
      districtId: json['master_addr_district_id'] as String?,
      prefectureId: json['master_addr_prefecture_id'] as String?,
      provinceId: json['master_addr_province_id'] as String?,
      postcodeId: json['master_addr_postcode_id'] as String?,
      regionId: json['master_addr_region_id'] as String?,
      active: json['main_master_company_active'] as bool?,
      logoPath: json['main_master_company_logo_path'] as String?,
      industryGroupId: json['master_industry_group_id'] as String?,
      businessCategoryId: json['master_business_category_id'] as String?,
      attachCert: json['main_master_company_attach_cert'] as String?,
      attachBoj5: (json['main_master_company_attach_boj5'] as num?)?.toInt(),
      pp20: json['main_master_company_pp20'] as String?,
      type_id: json['master_application_type_id'] as String?,
      version: json['application_version'] as String?,
      typeIdIpdate: json['master_application_type_id_update'] as String?,
      versionUpdate: json['application_version_update'] as String?,
      passwordOriginal: json['pass_word_original'] as String?,
      CompanyFormId: json['user_login_id'] as String?,
      projectTypeId: json['master_project_type_id'] as String?,
      startDate: json['contract_start_date'] as String?,
      endDate: json['contract_end_date'] as String?,
    );

Map<String, dynamic> _$$CompanyFormImplToJson(_$CompanyFormImpl instance) =>
    <String, dynamic>{
      'main_master_company_id': instance.id,
      'main_master_company_name': instance.name,
      'main_master_company_name_eng': instance.nameEn,
      'main_master_company_taxid': instance.taxId,
      'main_master_company_email': instance.email,
      'main_master_company_tel': instance.phoneNumber,
      'main_master_company_addr': instance.address,
      'master_addr_district_id': instance.districtId,
      'master_addr_prefecture_id': instance.prefectureId,
      'master_addr_province_id': instance.provinceId,
      'master_addr_postcode_id': instance.postcodeId,
      'master_addr_region_id': instance.regionId,
      'main_master_company_active': instance.active,
      'main_master_company_logo_path': instance.logoPath,
      'master_industry_group_id': instance.industryGroupId,
      'master_business_category_id': instance.businessCategoryId,
      'main_master_company_attach_cert': instance.attachCert,
      'main_master_company_attach_boj5': instance.attachBoj5,
      'main_master_company_pp20': instance.pp20,
      'master_application_type_id': instance.type_id,
      'application_version': instance.version,
      'master_application_type_id_update': instance.typeIdIpdate,
      'application_version_update': instance.versionUpdate,
      'pass_word_original': instance.passwordOriginal,
      'user_login_id': instance.CompanyFormId,
      'master_project_type_id': instance.projectTypeId,
      'contract_start_date': instance.startDate,
      'contract_end_date': instance.endDate,
    };
