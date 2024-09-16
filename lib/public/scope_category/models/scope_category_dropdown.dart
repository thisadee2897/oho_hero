import 'package:freezed_annotation/freezed_annotation.dart';
part 'scope_category_dropdown.freezed.dart';
part 'scope_category_dropdown.g.dart';

@freezed
class ScopeCategoryDropdownModel with _$ScopeCategoryDropdownModel {
  const factory ScopeCategoryDropdownModel({
    @JsonKey(name: 'master_scope_category_id') String? id,
    @JsonKey(name: 'master_scope_id') String? code,
    @JsonKey(name: 'master_scope_category_name') String? name,
    @JsonKey(name: 'master_scope_category_name_eng') String? nameEN,
  }) = _ScopeCategoryDropdownModel;

  factory ScopeCategoryDropdownModel.fromJson(Map<String, dynamic> json) => _$ScopeCategoryDropdownModelFromJson(json);
}
