import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oho_hero/features/auth/models/user_login.dart';
import 'package:oho_hero/utils/services/local_storage_service.dart';
import 'package:oho_hero/utils/services/rest_api_service.dart';
class AuthRepository {
  final Ref ref;
  final String _login = 'login';
  AuthRepository({required this.ref});
  Future<LoginResponse> login(Map<String, dynamic> body) async {
    try {
      Response<dynamic> res = await ref.read(apiClientProvider).post(_login, data: body);
      final loginResponse = LoginResponse.fromJson(res.data);
      if (loginResponse.token?.token != null) {
        await ref.read(localStorageServiceProvider).saveToken(loginResponse.token!.token!);
      }
      return loginResponse;
    } on DioException catch (e) {
      throw e;
    }
  }
}

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(ref: ref);
});