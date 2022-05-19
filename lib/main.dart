import 'package:chat_app_thrwat/screens/login_screen.dart';
import 'package:flutter/material.dart';

import 'screens/register_screen.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginScreen.id: (context) => const LoginScreen(),
        RegisterScreen.id2: (context) => const RegisterScreen(),
      },
      initialRoute: LoginScreen.id,
    );
  }
}
