import 'package:flutter/material.dart';

import 'LoginScreen.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ClassRoom",
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
