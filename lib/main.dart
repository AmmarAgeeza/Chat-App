import 'package:chat_app_thrwat/screens/chat_screen.dart';
import 'package:chat_app_thrwat/screens/login_screen.dart';
import 'package:flutter/material.dart';

import 'screens/register_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        RegisterScreen.id: (context) => const RegisterScreen(),
        ChatPage.id: (context) => const ChatPage(),

      },
      initialRoute: LoginScreen.id,
    );
  }
}
