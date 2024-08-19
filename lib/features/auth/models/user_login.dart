import 'dart:convert';

LoginModel userLoginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String userLoginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  String? userLoginId;
  String? userName;
  String? passWord;
  String? userLoginFullname;
  bool? userLoginActive;
  dynamic roleGroupId;
  String? masterCompanyId;
  dynamic masterEmployeeId;
  String? userLoginToken;
  int? userTypeId;
  String? email;
  String? masterOrganizationId;
  String? masterMemberId;
  dynamic userLoginTel;
  dynamic masterTransportDriverId;
  String? masterCarId;
  dynamic passWordOriginal;

  LoginModel({
    this.userLoginId,
    this.userName,
    this.passWord,
    this.userLoginFullname,
    this.userLoginActive,
    this.roleGroupId,
    this.masterCompanyId,
    this.masterEmployeeId,
    this.userLoginToken,
    this.userTypeId,
    this.email,
    this.masterOrganizationId,
    this.masterMemberId,
    this.userLoginTel,
    this.masterTransportDriverId,
    this.masterCarId,
    this.passWordOriginal,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        userLoginId: json["user_login_id"],
        userName: json["user_name"],
        passWord: json["pass_word"],
        userLoginFullname: json["user_login_fullname"],
        userLoginActive: json["user_login_active"],
        roleGroupId: json["role_group_id"],
        masterCompanyId: json["master_company_id"],
        masterEmployeeId: json["master_employee_id"],
        userLoginToken: json["user_login_token"],
        userTypeId: json["user_type_id"],
        email: json["email"],
        masterOrganizationId: json["master_organization_id"],
        masterMemberId: json["master_member_id"],
        userLoginTel: json["user_login_tel"],
        masterTransportDriverId: json["master_transport_driver_id"],
        masterCarId: json["master_car_id"],
        passWordOriginal: json["pass_word_original"],
      );

  Map<String, dynamic> toJson() => {
        "user_login_id": userLoginId,
        "user_name": userName,
        "pass_word": passWord,
        "user_login_fullname": userLoginFullname,
        "user_login_active": userLoginActive,
        "role_group_id": roleGroupId,
        "master_company_id": masterCompanyId,
        "master_employee_id": masterEmployeeId,
        "user_login_token": userLoginToken,
        "user_type_id": userTypeId,
        "email": email,
        "master_organization_id": masterOrganizationId,
        "master_member_id": masterMemberId,
        "user_login_tel": userLoginTel,
        "master_transport_driver_id": masterTransportDriverId,
        "master_car_id": masterCarId,
        "pass_word_original": passWordOriginal,
      };
}
