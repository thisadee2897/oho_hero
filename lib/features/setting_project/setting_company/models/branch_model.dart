import 'package:freezed_annotation/freezed_annotation.dart';
part 'branch_model.freezed.dart';
part 'branch_model.g.dart';

class Branch {
  final String id;
  final String branchName;

  Branch({required this.id, required this.branchName});
}

@freezed
class BranchModel with _$BranchModel {
  const factory BranchModel({
    @JsonKey(name: 'main_master_company_id') String? company_id,
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
    @JsonKey(name: 'user_login_id_update') String? updateAt,
  }) = _BranchModel;

  factory BranchModel.fromJson(Map<String, dynamic> json) =>
      _$BranchModelFromJson(json);
}
