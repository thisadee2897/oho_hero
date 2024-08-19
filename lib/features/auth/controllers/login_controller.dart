import 'package:oho_hero/config/routes/export.dart';
import 'package:oho_hero/features/auth/models/user_login.dart';
import 'package:oho_hero/shared_components/snackbar_custom.dart';

class LoginController extends StateNotifier<AsyncValue> {
  LoginController(this.ref) : super(AsyncData(LoginModel()));
  final Ref ref;

  void login(loginData,context) async {
    state = AsyncValue.loading();
    state =
        await AsyncValue.guard(() => ref.read(authRepositoryProvider).login({
              'username': loginData['user_name'],
              'password': loginData['pass_word'],
            }));
    if (state.hasError) {
      showSnackBar(context, state.error.toString());
    }
    ref.invalidate(isLoggedInProvider);
  }

  void logout() async {
    state = AsyncValue.loading();
    await Future.delayed(Duration(seconds: 1));
    await ref.read(localStorageServiceProvider).delete('auth_token');
    ref.invalidate(isLoggedInProvider);
    state = AsyncData(LoginModel());
  }
}

final loginProvider = StateNotifierProvider<LoginController, AsyncValue>(
    (ref) => LoginController(ref));

final isLoggedInProvider = FutureProvider<bool>((ref) async {
  final token = await ref.watch(localStorageServiceProvider).getToken();
  return token != null;
});
