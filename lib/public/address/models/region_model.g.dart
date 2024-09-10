// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegionModelImpl _$$RegionModelImplFromJson(Map<String, dynamic> json) =>
    _$RegionModelImpl(
      id: json['master_addr_region_id'] as String?,
      name: json['master_addr_region_name'] as String?,
      nameEN: json['master_addr_region_name_eng'] as String?,
    );

Map<String, dynamic> _$$RegionModelImplToJson(_$RegionModelImpl instance) =>
    <String, dynamic>{
      'master_addr_region_id': instance.id,
      'master_addr_region_name': instance.name,
      'master_addr_region_name_eng': instance.nameEN,
    };
