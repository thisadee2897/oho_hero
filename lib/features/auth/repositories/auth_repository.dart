import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oho_hero/utils/services/local_storage_service.dart';

import '../../../utils/services/rest_api_service.dart';

class AuthRepository {
  final Ref ref;
  final _login = 'login';

  AuthRepository({
    required this.ref,
  });

  Future login(Map<String, dynamic> body) async {
    try {
      Response<dynamic> res = await ref.read(apiClientProvider).post('$_login', data: body);
      ref.read(localStorageServiceProvider).saveToken(res.data['token']['token']);
    } on DioException catch (_) {
      rethrow;
    }
  }
}

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(ref: ref);
});
