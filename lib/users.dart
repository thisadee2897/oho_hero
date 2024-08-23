import 'package:freezed_annotation/freezed_annotation.dart';
part 'users.freezed.dart';
part 'users.g.dart';

@freezed
class Login with _$Login {
  const factory Login({
    required String username,
    required String password,
    @Default(false) bool isReMember,
  }) = _Login;
  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);
}
