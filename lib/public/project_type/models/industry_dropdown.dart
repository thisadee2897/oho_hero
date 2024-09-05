import 'package:freezed_annotation/freezed_annotation.dart';
part 'industry_dropdown.freezed.dart';
part 'industry_dropdown.g.dart';

@freezed
class IndustryGrorupDropDownModel with _$IndustryGrorupDropDownModel {
  const factory IndustryGrorupDropDownModel({
    @JsonKey(name: 'master_industry_group_id') String? id,
    @JsonKey(name: 'master_industry_group_name') String? name,
    @JsonKey(name: 'master_active_flag') bool? active,
    @JsonKey(name: 'master_industry_group_name_eng') String? nameEN,
    @JsonKey(name: 'master_industry_group_prefix') String? prefix,
  }) = _IndustryGrorupDropDownModel;

  factory IndustryGrorupDropDownModel.fromJson(Map<String, dynamic> json) =>
      _$IndustryGrorupDropDownModelFromJson(json);
}
