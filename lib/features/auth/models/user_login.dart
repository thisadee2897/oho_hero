import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_login.freezed.dart';
part 'user_login.g.dart';

@freezed
class UserLogin with _$UserLogin {
  const factory UserLogin({
    @JsonKey(name: 'user_login_id') String? id,
    @JsonKey(name: 'user_name') String? username,
    @JsonKey(name: 'pass_word') String? password,
    @JsonKey(name: 'user_login_fullname') String? firstName,
    @JsonKey(name: 'user_login_active') bool? active,
    @JsonKey(name: 'role_group_id') String? roleGroupId,
    @JsonKey(name: 'main_master_company_id') String? companyId,
    @JsonKey(name: 'user_login_token') String? loginToken,
    @JsonKey(name: 'user_type_id') int? userTypeId,
    @JsonKey(name: 'user_email') String? email,
    @JsonKey(name: 'user_login_tel') String? phoneNumber,
    @JsonKey(name: 'pass_word_original') String? passwordOriginal,
    @JsonKey(name: 'master_employee_id') String? employeeId,
    @JsonKey(name: 'master_custumer_id') String? customerId,
    @JsonKey(name: 'savetime') String? savetime,
  }) = _UserLogin;

  factory UserLogin.fromJson(Map<String, dynamic> json) =>
      _$UserLoginFromJson(json);
}
