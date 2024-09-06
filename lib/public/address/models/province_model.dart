import 'package:freezed_annotation/freezed_annotation.dart';
part 'province_model.freezed.dart';
part 'province_model.g.dart';

@freezed
class ProvinceModel with _$ProvinceModel {
  const factory ProvinceModel({
    @JsonKey(name: 'master_addr_province_id') String? id,
    @JsonKey(name: 'master_addr_province_name') String? name,
    @JsonKey(name: 'master_addr_province_name_eng') String? nameEN,
    @JsonKey(name: 'master_addr_region_id') String? regionId,
    @JsonKey(name: 'master_addr_region_name') String? regionName,
  }) = _ProvinceModel;

  factory ProvinceModel.fromJson(Map<String, dynamic> json) => _$ProvinceModelFromJson(json);
}
