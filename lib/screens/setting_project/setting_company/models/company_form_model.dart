import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_form_model.freezed.dart';
part 'company_form_model.g.dart';

@freezed
class CompanyForm with _$CompanyForm {
  const factory CompanyForm({
    @JsonKey(name: 'main_master_company_id') String? id,
    @JsonKey(name: 'main_master_company_name') String? name,
    @JsonKey(name: 'main_master_company_name_eng') String? nameEn,
    @JsonKey(name: 'main_master_company_taxid') String? taxId,
    @JsonKey(name: 'main_master_company_email') String? email,
    @JsonKey(name: 'main_master_company_tel') String? phoneNumber,
    @JsonKey(name: 'main_master_company_addr') String? address,
    @JsonKey(name: 'master_addr_district_id') String? districtId,
    @JsonKey(name: 'master_addr_prefecture_id') String? prefectureId,
    @JsonKey(name: 'master_addr_province_id') String? provinceId,
    @JsonKey(name: 'master_addr_postcode_id') String? postcodeId,
    @JsonKey(name: 'master_addr_region_id') String? regionId,
    @JsonKey(name: 'main_master_company_active') bool? active,
    @JsonKey(name: 'main_master_company_logo_path') String? logoPath,
    @JsonKey(name: 'master_industry_group_id') String? industryGroupId,
    @JsonKey(name: 'master_business_category_id') String? businessCategoryId,
    @JsonKey(name: 'main_master_company_attach_cert') String? attachCert,
    @JsonKey(name: 'main_master_company_attach_boj5') int? attachBoj5,
    @JsonKey(name: 'main_master_company_pp20') String? pp20,
    @JsonKey(name: 'master_application_type_id') String? type_id,
    @JsonKey(name: 'application_version') String? version,
    @JsonKey(name: 'master_application_type_id_update') String? typeIdIpdate,
    @JsonKey(name: 'application_version_update') String? versionUpdate,
    @JsonKey(name: 'pass_word_original') String? passwordOriginal,
    @JsonKey(name: 'user_login_id') String? CompanyFormId,
    @JsonKey(name: 'master_project_type_id') String? projectTypeId,
    @JsonKey(name: 'contract_start_date') String? startDate,
    @JsonKey(name: 'contract_end_date') String? endDate,
  }) = _CompanyForm;

  factory CompanyForm.fromJson(Map<String, dynamic> json) =>
      _$CompanyFormFromJson(json);
}
