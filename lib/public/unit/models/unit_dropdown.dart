import 'package:freezed_annotation/freezed_annotation.dart';
part 'unit_dropdown.freezed.dart';
part 'unit_dropdown.g.dart';

@freezed
class UnitDropdownModel with _$UnitDropdownModel {
  const factory UnitDropdownModel({
    @JsonKey(name: 'master_unit_id') String? id,
    @JsonKey(name: 'master_unit_code') String? code,
    @JsonKey(name: 'master_unit_name') String? name,
    @JsonKey(name: 'master_unit_name_eng') String? nameEN,
    @JsonKey(name: 'master_unit_active') String? active,
  }) = _UnitDropdownModel;

  factory UnitDropdownModel.fromJson(Map<String, dynamic> json) => _$UnitDropdownModelFromJson(json);
}
