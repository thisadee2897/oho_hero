import 'package:oho_hero/config/routes/export.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  _onLoginTab() {
    final loginData = {
      'user_name': usernameController.text,
      'pass_word': passwordController.text,
    };
    ref.read(loginProvider.notifier).login(loginData,context);
  }

  @override
  Widget build(BuildContext context) {
    final loginState = ref.watch(loginProvider);
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome Back',
              ),
              SizedBox(height: 32.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('Email or phone number'),
                  TextFormField(
                    controller: usernameController,
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('Password'),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                  ),
                ],
              ),
              SizedBox(height: 32.0),
              ButtonCustom(
                borderRadius: 8,
                text: 'Log in',
                width: 120,
                loading: loginState.isLoading,
                onTap: _onLoginTab,
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
