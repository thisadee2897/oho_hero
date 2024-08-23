// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      status: (json['status'] as num?)?.toInt(),
      token: json['token'] == null
          ? null
          : Token.fromJson(json['token'] as Map<String, dynamic>),
      employee: json['employee'] == null
          ? null
          : Employee.fromJson(json['employee'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'token': instance.token,
      'employee': instance.employee,
    };

_$TokenImpl _$$TokenImplFromJson(Map<String, dynamic> json) => _$TokenImpl(
      type: json['type'] as String?,
      token: json['token'] as String?,
      refreshToken: json['refreshToken'] as String?,
      expiresAt: json['expires_at'] as String?,
    );

Map<String, dynamic> _$$TokenImplToJson(_$TokenImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'token': instance.token,
      'refreshToken': instance.refreshToken,
      'expires_at': instance.expiresAt,
    };

_$EmployeeImpl _$$EmployeeImplFromJson(Map<String, dynamic> json) =>
    _$EmployeeImpl(
      object: json['object'] as String?,
      id: json['id'] as String?,
      no: json['no'] as String?,
      companyId: json['company_id'] as String?,
      branchId: json['branch_id'] as String?,
      pin: json['pin'] as String?,
      username: json['username'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      email: json['email'] as String?,
      roleId: json['role_id'] as String?,
      avatar: json['avatar'] as String?,
      active: (json['active'] as num?)?.toInt(),
      startedAt: json['started_at'] as String?,
      createdBy: json['created_by'] as String?,
      updatedBy: json['updated_by'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$EmployeeImplToJson(_$EmployeeImpl instance) =>
    <String, dynamic>{
      'object': instance.object,
      'id': instance.id,
      'no': instance.no,
      'company_id': instance.companyId,
      'branch_id': instance.branchId,
      'pin': instance.pin,
      'username': instance.username,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone_number': instance.phoneNumber,
      'email': instance.email,
      'role_id': instance.roleId,
      'avatar': instance.avatar,
      'active': instance.active,
      'started_at': instance.startedAt,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
