import 'package:freezed_annotation/freezed_annotation.dart';
part 'scope_dropdown.freezed.dart';
part 'scope_dropdown.g.dart';

@freezed
class ScopeDropdownModel with _$ScopeDropdownModel {
  const factory ScopeDropdownModel({
    @JsonKey(name: 'master_scope_id') String? id,
    @JsonKey(name: 'master_scope_name') String? name,
    @JsonKey(name: 'master_scope_name_eng') String? nameEN,
     @JsonKey(name: 'master_scope_remark') String? remark,
  }) = _ScopeDropdownModel;

  factory ScopeDropdownModel.fromJson(Map<String, dynamic> json) => _$ScopeDropdownModelFromJson(json);
}
