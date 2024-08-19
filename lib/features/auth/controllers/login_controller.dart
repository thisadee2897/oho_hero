import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oho_hero/features/auth/repositories/auth_repository.dart';

import '../../../utils/services/local_storage_service.dart';

class LoginController extends StateNotifier<AsyncValue> {
  LoginController(this.ref) : super(AsyncData(null));
  final Ref ref;

  void login() async {
    state = AsyncValue.loading();
    /// state = await AsyncValue.guard(() => ref.read(authRepositoryProvider).login({}));
    state = await AsyncValue.guard(() => Future.delayed(Duration(seconds: 3)));
    ref.read(localStorageServiceProvider).saveToken('123');
    ref.invalidate(isLoggedInProvider);
  }
}

final loginProvider = StateNotifierProvider<LoginController,AsyncValue>((ref) => LoginController(ref));

final isLoggedInProvider = FutureProvider<bool>((ref) async {
  final token = await ref.watch(localStorageServiceProvider).getToken();
  return token != null;
});