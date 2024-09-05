import 'package:freezed_annotation/freezed_annotation.dart';
part 'business_category_dropdown.freezed.dart';
part 'business_category_dropdown.g.dart';

@freezed
class BusinessCategoryDropDownModel with _$BusinessCategoryDropDownModel {
  const factory BusinessCategoryDropDownModel({
    @JsonKey(name: 'master_business_category_id') String? id,
    @JsonKey(name: 'master_industry_group_id') String? industryGroupId,
    @JsonKey(name: 'master_business_category_name') String? name,
    @JsonKey(name: 'master_business_category_name_eng') String? nameEN,
    @JsonKey(name: 'master_business_category_active_flag') bool? active,
    @JsonKey(name: 'master_business_category_prefix') String? prefix,
  }) = _IndustryGrorupDropDownModel;

  factory BusinessCategoryDropDownModel.fromJson(Map<String, dynamic> json) =>
      _$BusinessCategoryDropDownModelFromJson(json);
}
