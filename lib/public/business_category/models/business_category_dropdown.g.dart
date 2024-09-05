// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_category_dropdown.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndustryGrorupDropDownModelImpl _$$IndustryGrorupDropDownModelImplFromJson(
        Map<String, dynamic> json) =>
    _$IndustryGrorupDropDownModelImpl(
      id: json['master_business_category_id'] as String?,
      industryGroupId: json['master_industry_group_id'] as String?,
      name: json['master_business_category_name'] as String?,
      nameEN: json['master_business_category_name_eng'] as String?,
      active: json['master_business_category_active_flag'] as bool?,
      prefix: json['master_business_category_prefix'] as String?,
    );

Map<String, dynamic> _$$IndustryGrorupDropDownModelImplToJson(
        _$IndustryGrorupDropDownModelImpl instance) =>
    <String, dynamic>{
      'master_business_category_id': instance.id,
      'master_industry_group_id': instance.industryGroupId,
      'master_business_category_name': instance.name,
      'master_business_category_name_eng': instance.nameEN,
      'master_business_category_active_flag': instance.active,
      'master_business_category_prefix': instance.prefix,
    };
