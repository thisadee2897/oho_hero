// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postcode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostCodeModelImpl _$$PostCodeModelImplFromJson(Map<String, dynamic> json) =>
    _$PostCodeModelImpl(
      id: json['master_addr_postcode_id'] as String?,
      code: json['master_addr_postcode_code'] as String?,
      subDistrictId: json['master_addr_district_id'] as String?,
    );

Map<String, dynamic> _$$PostCodeModelImplToJson(_$PostCodeModelImpl instance) =>
    <String, dynamic>{
      'master_addr_postcode_id': instance.id,
      'master_addr_postcode_code': instance.code,
      'master_addr_district_id': instance.subDistrictId,
    };
