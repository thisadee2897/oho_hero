import 'package:freezed_annotation/freezed_annotation.dart';
part 'asset_type_dropdown.freezed.dart';
part 'asset_type_dropdown.g.dart';

@freezed
class AssetTypeDropdownModel with _$AssetTypeDropdownModel {
  const factory AssetTypeDropdownModel({
    @JsonKey(name: 'master_scope_id') String? id,
    @JsonKey(name: 'master_scope_name') String? name,
    @JsonKey(name: 'master_scope_name_eng') String? nameEN,
     @JsonKey(name: 'master_scope_remark') String? remark,
  }) = _AssetTypeDropdownModel;

  factory AssetTypeDropdownModel.fromJson(Map<String, dynamic> json) => _$AssetTypeDropdownModelFromJson(json);
}
