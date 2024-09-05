// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_district_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubdistrictModelImpl _$$SubdistrictModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubdistrictModelImpl(
      id: json['master_addr_district_id'] as String?,
      name: json['master_addr_district_name'] as String?,
      nameEN: json['master_addr_district_name_eng'] as String?,
      districtId: json['master_addr_prefecture_id'] as String?,
      districtName: json['master_addr_prefecture_name'] as String?,
      provinceId: json['master_addr_province_id'] as String?,
      provinceName: json['master_addr_province_name'] as String?,
    );

Map<String, dynamic> _$$SubdistrictModelImplToJson(
        _$SubdistrictModelImpl instance) =>
    <String, dynamic>{
      'master_addr_district_id': instance.id,
      'master_addr_district_name': instance.name,
      'master_addr_district_name_eng': instance.nameEN,
      'master_addr_prefecture_id': instance.districtId,
      'master_addr_prefecture_name': instance.districtName,
      'master_addr_province_id': instance.provinceId,
      'master_addr_province_name': instance.provinceName,
    };
