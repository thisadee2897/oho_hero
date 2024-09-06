import 'package:freezed_annotation/freezed_annotation.dart';
part 'project_type_dropdown.freezed.dart';
part 'project_type_dropdown.g.dart';

@freezed
class ProjectTypeDropdownModel with _$ProjectTypeDropdownModel {
  const factory ProjectTypeDropdownModel({
    @JsonKey(name: 'master_project_type_id') String? id,
    @JsonKey(name: 'master_project_type_name') String? name,
    @JsonKey(name: 'master_active_flag') bool? active,
    @JsonKey(name: 'master_project_type_name_eng') String? nameEN,
    @JsonKey(name: 'master_project_type_prefix') String? prefix,
  }) = _ProjectTypeDropdownModel;

  factory ProjectTypeDropdownModel.fromJson(Map<String, dynamic> json) => _$ProjectTypeDropdownModelFromJson(json);
}
