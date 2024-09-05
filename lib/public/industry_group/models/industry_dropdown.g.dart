// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'industry_dropdown.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndustryGrorupDropDownModelImpl _$$IndustryGrorupDropDownModelImplFromJson(
        Map<String, dynamic> json) =>
    _$IndustryGrorupDropDownModelImpl(
      id: json['master_industry_group_id'] as String?,
      name: json['master_industry_group_name'] as String?,
      active: json['master_active_flag'] as bool?,
      nameEN: json['master_industry_group_name_eng'] as String?,
      prefix: json['master_industry_group_prefix'] as String?,
    );

Map<String, dynamic> _$$IndustryGrorupDropDownModelImplToJson(
        _$IndustryGrorupDropDownModelImpl instance) =>
    <String, dynamic>{
      'master_industry_group_id': instance.id,
      'master_industry_group_name': instance.name,
      'master_active_flag': instance.active,
      'master_industry_group_name_eng': instance.nameEN,
      'master_industry_group_prefix': instance.prefix,
    };
