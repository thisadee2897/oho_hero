import 'package:oho_hero/config/routes/export.dart';
import 'package:oho_hero/features/auth/models/user_login.dart';
import 'package:oho_hero/features/auth/repositories/auth_repository.dart';
import 'package:oho_hero/shared_components/snackbar_custom.dart';
import 'package:oho_hero/utils/services/local_storage_service.dart';

class LoginController extends StateNotifier<AsyncValue<LoginResponse>> {
  LoginController(this.ref)
      : super(AsyncValue.data(LoginResponse(status: 200)));
  final Ref ref;
  Future<void> login(
      Map<String, dynamic> loginData, BuildContext context) async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response = await ref.read(authRepositoryProvider).login({
        'username': loginData['user_name'],
        'password': loginData['pass_word'],
      });
      return response;
    });

    if (state.hasError) {
      customAlert(context, state.error.toString());
    } else {
      final loginResponse = state.asData?.value;
      if (loginResponse?.token?.token != null) {
        await ref
            .read(localStorageServiceProvider)
            .saveToken(loginResponse!.token!.token!);
        GoRouter.of(context).go(Routes.home);
        ref.invalidate(isLoggedInProvider);
      }
    }
  }

  Future<void> logout() async {
    state = AsyncValue.loading();
    await Future.delayed(Duration(seconds: 1));
    await ref.read(localStorageServiceProvider).delete('auth_token');
    ref.invalidate(isLoggedInProvider);
    state = AsyncValue.data(LoginResponse(status: 200));
  }
}

final loginProvider =
    StateNotifierProvider<LoginController, AsyncValue<LoginResponse>>(
        (ref) => LoginController(ref));

final isLoggedInProvider = FutureProvider<bool>((ref) async {
  final token = await ref.watch(localStorageServiceProvider).getToken();
  return token != null;
});
