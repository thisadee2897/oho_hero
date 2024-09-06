import 'package:freezed_annotation/freezed_annotation.dart';
part 'project_type_model.freezed.dart';
part 'project_type_model.g.dart';

@freezed
class ProjectTypeModel with _$ProjectTypeModel {
  const factory ProjectTypeModel({
    @JsonKey(name: 'master_project_type_id') String? id,
    @JsonKey(name: 'master_project_type_name') String? name,
    @JsonKey(name: 'master_active_flag') bool? active,
    @JsonKey(name: 'master_project_type_name_eng') String? nameEN,
    @JsonKey(name: 'master_project_type_prefix') String? prefix,
  }) = _ProjectTypeModel;

  factory ProjectTypeModel.fromJson(Map<String, dynamic> json) => _$ProjectTypeModelFromJson(json);
}
