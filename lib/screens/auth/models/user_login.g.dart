// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserLoginImpl _$$UserLoginImplFromJson(Map<String, dynamic> json) =>
    _$UserLoginImpl(
      id: json['user_login_id'] as String?,
      username: json['user_name'] as String?,
      password: json['pass_word'] as String?,
      firstName: json['user_login_fullname'] as String?,
      active: json['user_login_active'] as bool?,
      roleGroupId: json['role_group_id'] as String?,
      companyId: json['main_master_company_id'] as String?,
      loginToken: json['user_login_token'] as String?,
      userTypeId: (json['user_type_id'] as num?)?.toInt(),
      email: json['user_email'] as String?,
      phoneNumber: json['user_login_tel'] as String?,
      passwordOriginal: json['pass_word_original'] as String?,
      employeeId: json['master_employee_id'] as String?,
      customerId: json['master_custumer_id'] as String?,
      savetime: json['savetime'] as String?,
    );

Map<String, dynamic> _$$UserLoginImplToJson(_$UserLoginImpl instance) =>
    <String, dynamic>{
      'user_login_id': instance.id,
      'user_name': instance.username,
      'pass_word': instance.password,
      'user_login_fullname': instance.firstName,
      'user_login_active': instance.active,
      'role_group_id': instance.roleGroupId,
      'main_master_company_id': instance.companyId,
      'user_login_token': instance.loginToken,
      'user_type_id': instance.userTypeId,
      'user_email': instance.email,
      'user_login_tel': instance.phoneNumber,
      'pass_word_original': instance.passwordOriginal,
      'master_employee_id': instance.employeeId,
      'master_custumer_id': instance.customerId,
      'savetime': instance.savetime,
    };
