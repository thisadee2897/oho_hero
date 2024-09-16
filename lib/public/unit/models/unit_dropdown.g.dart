// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_dropdown.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnitDropdownModelImpl _$$UnitDropdownModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UnitDropdownModelImpl(
      id: json['master_unit_id'] as String?,
      code: json['master_unit_code'] as String?,
      name: json['master_unit_name'] as String?,
      nameEN: json['master_unit_name_eng'] as String?,
      active: json['master_unit_active'] as String?,
    );

Map<String, dynamic> _$$UnitDropdownModelImplToJson(
        _$UnitDropdownModelImpl instance) =>
    <String, dynamic>{
      'master_unit_id': instance.id,
      'master_unit_code': instance.code,
      'master_unit_name': instance.name,
      'master_unit_name_eng': instance.nameEN,
      'master_unit_active': instance.active,
    };
