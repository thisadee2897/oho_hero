import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oho_hero/config/constants/api_path.dart';
import 'package:oho_hero/screens/auth/models/user_login.dart';
import 'package:oho_hero/utils/services/rest_api_service.dart';

class AuthRepository {
  final Ref ref;
  final String _login = 'security/login/login';
  AuthRepository({required this.ref});
  Future<UserLogin> login(Map<String, dynamic> body) async {
    try {
      Response<dynamic> res = await ref.read(apiClientProvider).post(
            _login,
            data: body,
            options: opttion,
          );
      UserLogin loginResponse = UserLogin.fromJson(res.data['data'][0]);
      return loginResponse;
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? '';
    }
  }
}

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(ref: ref);
});
