import 'package:flutter/material.dart';

import 'shared_components/loading.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Loading(
          color: Colors.white,
        ),
      ),
    );
  }
}
