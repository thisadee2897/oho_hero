import 'package:freezed_annotation/freezed_annotation.dart';
part 'district_model.freezed.dart';
part 'district_model.g.dart';

@freezed
class DistrictModel with _$DistrictModel {
  const factory DistrictModel({
    @JsonKey(name: 'master_addr_prefecture_id') String? id,
    @JsonKey(name: 'master_addr_prefecture_name') String? name,
    @JsonKey(name: 'master_addr_prefecture_name_eng') String? nameEN,
    @JsonKey(name: 'master_addr_province_id') String? provinceId,
  }) = _DistrictModelModel;

  factory DistrictModel.fromJson(Map<String, dynamic> json) => _$DistrictModelFromJson(json);
}
