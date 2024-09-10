// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'province_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProvinceModelImpl _$$ProvinceModelImplFromJson(Map<String, dynamic> json) =>
    _$ProvinceModelImpl(
      id: json['master_addr_province_id'] as String?,
      name: json['master_addr_province_name'] as String?,
      nameEN: json['master_addr_province_name_eng'] as String?,
      regionId: json['master_addr_region_id'] as String?,
      regionName: json['master_addr_region_name'] as String?,
      regionNameEN: json['master_addr_region_name_eng'] as String?,
    );

Map<String, dynamic> _$$ProvinceModelImplToJson(_$ProvinceModelImpl instance) =>
    <String, dynamic>{
      'master_addr_province_id': instance.id,
      'master_addr_province_name': instance.name,
      'master_addr_province_name_eng': instance.nameEN,
      'master_addr_region_id': instance.regionId,
      'master_addr_region_name': instance.regionName,
      'master_addr_region_name_eng': instance.regionNameEN,
    };
