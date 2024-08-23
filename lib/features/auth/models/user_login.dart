import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_login.freezed.dart';
part 'user_login.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    int? status,
    Token? token,
    Employee? employee,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
}

@freezed
class Token with _$Token {
  const factory Token({
    String? type,
    String? token,
    @JsonKey(name: 'refreshToken') String? refreshToken,
    @JsonKey(name: 'expires_at') String? expiresAt,
  }) = _Token;

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}

@freezed
class Employee with _$Employee {
  const factory Employee({
    @JsonKey(name: 'object') String? object,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'no') String? no,
    @JsonKey(name: 'company_id') String? companyId,
    @JsonKey(name: 'branch_id') String? branchId,
    @JsonKey(name: 'pin') String? pin,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'role_id') String? roleId,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'active') int? active,
    @JsonKey(name: 'started_at') String? startedAt,
    @JsonKey(name: 'created_by') String? createdBy,
    @JsonKey(name: 'updated_by') String? updatedBy,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) => _$EmployeeFromJson(json);
}
