import 'package:oho_hero/config/routes/export.dart';

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

  void logout() async {
    state = AsyncValue.loading();
    await Future.delayed(Duration(seconds: 1));
    // Use delete to remove the stored token
    await ref.read(localStorageServiceProvider).delete('auth_token');
    ref.invalidate(isLoggedInProvider);
    state = AsyncData(null);
  }
}

final loginProvider = StateNotifierProvider<LoginController, AsyncValue>(
    (ref) => LoginController(ref));

final isLoggedInProvider = FutureProvider<bool>((ref) async {
  final token = await ref.watch(localStorageServiceProvider).getToken();
  return token != null;
});
