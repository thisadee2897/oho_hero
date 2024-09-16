// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scope_category_dropdown.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScopeCategoryDropdownModelImpl _$$ScopeCategoryDropdownModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ScopeCategoryDropdownModelImpl(
      id: json['master_scope_category_id'] as String?,
      code: json['master_scope_id'] as String?,
      name: json['master_scope_category_name'] as String?,
      nameEN: json['master_scope_category_name_eng'] as String?,
    );

Map<String, dynamic> _$$ScopeCategoryDropdownModelImplToJson(
        _$ScopeCategoryDropdownModelImpl instance) =>
    <String, dynamic>{
      'master_scope_category_id': instance.id,
      'master_scope_id': instance.code,
      'master_scope_category_name': instance.name,
      'master_scope_category_name_eng': instance.nameEN,
    };
