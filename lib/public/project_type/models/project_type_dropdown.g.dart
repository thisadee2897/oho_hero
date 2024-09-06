// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_type_dropdown.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectTypeDropdownModelImpl _$$ProjectTypeDropdownModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectTypeDropdownModelImpl(
      id: json['master_project_type_id'] as String?,
      name: json['master_project_type_name'] as String?,
      active: json['master_active_flag'] as bool?,
      nameEN: json['master_project_type_name_eng'] as String?,
      prefix: json['master_project_type_prefix'] as String?,
    );

Map<String, dynamic> _$$ProjectTypeDropdownModelImplToJson(
        _$ProjectTypeDropdownModelImpl instance) =>
    <String, dynamic>{
      'master_project_type_id': instance.id,
      'master_project_type_name': instance.name,
      'master_active_flag': instance.active,
      'master_project_type_name_eng': instance.nameEN,
      'master_project_type_prefix': instance.prefix,
    };
