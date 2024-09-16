// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_type_dropdown.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssetTypeDropdownModelImpl _$$AssetTypeDropdownModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AssetTypeDropdownModelImpl(
      id: json['master_scope_id'] as String?,
      name: json['master_scope_name'] as String?,
      nameEN: json['master_scope_name_eng'] as String?,
      remark: json['master_scope_remark'] as String?,
    );

Map<String, dynamic> _$$AssetTypeDropdownModelImplToJson(
        _$AssetTypeDropdownModelImpl instance) =>
    <String, dynamic>{
      'master_scope_id': instance.id,
      'master_scope_name': instance.name,
      'master_scope_name_eng': instance.nameEN,
      'master_scope_remark': instance.remark,
    };
