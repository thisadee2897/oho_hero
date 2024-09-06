import 'package:freezed_annotation/freezed_annotation.dart';
part 'region_model.freezed.dart';
part 'region_model.g.dart';

@freezed
class RegionModel with _$RegionModel {
  const factory RegionModel({
    @JsonKey(name: 'master_addr_region_id') String? id,
    @JsonKey(name: 'master_addr_region_name') String? name,
  }) = _RegionModel;

  factory RegionModel.fromJson(Map<String, dynamic> json) => _$RegionModelFromJson(json);
}
