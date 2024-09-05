import 'package:oho_hero/config/routes/export.dart';


class LoginController extends StateNotifier<AsyncValue<UserLogin>> {
  LoginController(this.ref) : super(AsyncValue.data(UserLogin()));
  final Ref ref;
  Future<void> login(Map<String, dynamic> data) async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response = await ref.read(authRepositoryProvider).login({
        'user_name': data['user_name'],
        'pass_word': data['pass_word'],
      });
      return response;
    });
  }

  Future<void> logout() async {
    state = AsyncValue.loading();
    await Future.delayed(Duration(seconds: 1));
    await ref.read(localStorageServiceProvider).delete('auth_token');
    ref.invalidate(isLoggedInProvider);
    state = AsyncValue.data(UserLogin());
  }
}

final loginProvider =
    StateNotifierProvider<LoginController, AsyncValue<UserLogin>>(
        (ref) => LoginController(ref));

final isLoggedInProvider = FutureProvider<bool>((ref) async {
  final token = await ref.watch(localStorageServiceProvider).getToken();
  return token != null;
});
// if (state.hasError) {
    //   customAlert(context, state.error.toString());
    // } else {
    //   final loginResponse = state.asData?.value;
    //   if (loginResponse?.loginToken!= null) {
    //     await ref
    //         .read(localStorageServiceProvider)
    //         .saveToken(loginResponse!.loginToken!);
    //     GoRouter.of(context).go(Routes.home);
    //     ref.invalidate(isLoggedInProvider);
    //   }
    // }