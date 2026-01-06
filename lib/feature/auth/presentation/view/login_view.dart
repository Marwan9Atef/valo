import 'package:flutter/material.dart';

import '../desktop/screens/desktop_login_screen.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: const DesktopLoginScreen()),

    );
  }
}
