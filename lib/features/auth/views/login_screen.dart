import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oho_hero/features/auth/controllers/login_controller.dart';
import 'package:oho_hero/shared_components/button_custom.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  _onLoginTab() {
    ref.read(loginProvider.notifier).login();
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
              // SizedBox(height: 16.0),
              // Text(
              //   'Please log in to your account',
              // ),
              SizedBox(height: 32.0),
              // TextFormField(
              //   decoration: InputDecoration(
              //     hintText: 'Email,Phone number',
              //   ),
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('Email or phone number'),
                  TextFormField(
                      // obscureText: true,
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
              // ButtonCustom(
              //   buttonType:ButtonType.outlined,
              //   borderRadius: 8,
              //   text: 'Cancle',
              //   width: 120,
              //   loading: loginState.isLoading,
              //   onTap: _onLoginTab,
              // ),
              // SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
