import 'package:oho_hero/config/routes/export.dart';

class LoginScreen extends BaseStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends BaseState<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget buildTablet(
      BuildContext context, SizingInformation sizingInformation) {
    return CupertinoPageScaffold(
      child: Center(
        child: SizedBox(
          width: 400,
          height: 400,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: content(),
          ),
        ),
      ),
    );
  }

  @override
  Widget buildDesktop(
      BuildContext context, SizingInformation sizingInformation) {
    return CupertinoPageScaffold(
      child: Center(
        child: SizedBox(
          width: 400,
          height: 400,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: content(),
          ),
        ),
      ),
    );
  }

  @override
  Widget buildMobile(
      BuildContext context, SizingInformation sizingInformation) {
    return CupertinoPageScaffold(
      child: Center(
        child: SizedBox(
          width: 400,
          height: 400,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: content(),
          ),
        ),
      ),
    );
  }

  Center content() {
    AsyncValue<UserLogin> loginState = ref.watch(loginProvider);
    _handleLoginState(context, loginState);
    return Center(
      child: BackgroundCustom(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'OHO HERO',
            ),
            SizedBox(height: 32.0),
            CustomTextFormfield(
              title: 'Username',
              controller: usernameController,
            ),
            SizedBox(height: 16.0),
            CustomTextFormfield(
              title: 'Password',
              controller: passwordController,
              obscureText: true,
            ),
            SizedBox(height: 32.0),
            ButtonCustom(
              borderRadius: 8,
              text: 'Log in',
              width: 120,
              loading: loginState.isLoading,
              onTap: _onLoginTab,
            ),
          ],
        ),
      ),
    );
  }

  _onLoginTab() {
    final loginData = {
      'user_name': usernameController.text,
      'pass_word': passwordController.text,
    };
    ref.read(loginProvider.notifier).login(loginData);
  }

  _handleLoginState(BuildContext context, AsyncValue<UserLogin> loginState) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (loginState.hasError) {
        customAlert(context, loginState.error.toString());
      } else {
        UserLogin? loginResponse = loginState.asData?.value;
        if (loginResponse?.loginToken != null) {
          ref
              .read(localStorageServiceProvider)
              .saveToken(loginResponse!.loginToken!);
          GoRouter.of(context).go(Routes.home);
          ref.invalidate(isLoggedInProvider);
        }
      }
    });
  }
}
