import 'package:freezed_annotation/freezed_annotation.dart';
part 'sub_district_model.freezed.dart';
part 'sub_district_model.g.dart';

@freezed
class SubdistrictModel with _$SubdistrictModel {
  const factory SubdistrictModel({
    @JsonKey(name: 'master_addr_district_id') String? id,
    @JsonKey(name: 'master_addr_district_name') String? name,
    @JsonKey(name: 'master_addr_district_name_eng') String? nameEN,
    @JsonKey(name: 'master_addr_prefecture_id') String? districtId,
    @JsonKey(name: 'master_addr_prefecture_name') String? districtName,
    @JsonKey(name: 'master_addr_province_id') String? provinceId,
    @JsonKey(name: 'master_addr_province_name') String? provinceName,
  }) = _SubdistrictModel;

  factory SubdistrictModel.fromJson(Map<String, dynamic> json) =>
      _$SubdistrictModelFromJson(json);
}
