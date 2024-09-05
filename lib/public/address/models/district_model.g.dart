// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DistrictModelModelImpl _$$DistrictModelModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DistrictModelModelImpl(
      id: json['master_addr_prefecture_id'] as String?,
      name: json['master_addr_prefecture_name'] as String?,
      nameEN: json['master_addr_prefecture_name_eng'] as String?,
      provinceId: json['master_addr_province_id'] as String?,
    );

Map<String, dynamic> _$$DistrictModelModelImplToJson(
        _$DistrictModelModelImpl instance) =>
    <String, dynamic>{
      'master_addr_prefecture_id': instance.id,
      'master_addr_prefecture_name': instance.name,
      'master_addr_prefecture_name_eng': instance.nameEN,
      'master_addr_province_id': instance.provinceId,
    };
