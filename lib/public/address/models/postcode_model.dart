import 'package:freezed_annotation/freezed_annotation.dart';
part 'postcode_model.freezed.dart';
part 'postcode_model.g.dart';

@freezed
class PostCodeModel with _$PostCodeModel {
  const factory PostCodeModel({
    @JsonKey(name: 'master_addr_postcode_id') String? id,
    @JsonKey(name: 'master_addr_postcode_code') String? code,
    @JsonKey(name: 'master_addr_district_id') String? subDistrictId,
  }) = _PostCodeModel;

  factory PostCodeModel.fromJson(Map<String, dynamic> json) => _$PostCodeModelFromJson(json);
}
