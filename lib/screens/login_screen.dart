import 'package:chat_app_thrwat/screens/register_screen.dart';
import 'package:chat_app_thrwat/widgets/custom_button.dart';
import 'package:chat_app_thrwat/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String id = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const SizedBox(height: 100,),
            Image.asset('assets/images/scholar.png',height: 100,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: const [
                 Text(
                  'Scholar Chat',
                  style: TextStyle(
                      fontSize: 35, fontFamily: 'Pacifico', color: Colors.white),
            ),
               ],
             ),
            const SizedBox(height: 50,),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(hintText: 'E-mail'),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(hintText: 'Password'),
            const SizedBox(
              height: 15,
            ),
            CustomButton(
              title: 'LOGIN',
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('don\'t have account '),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RegisterScreen.id);
                    },
                    child: const Text('Sign Up'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
