import 'package:chat_app_thrwat/widgets/custom_button.dart';
import 'package:chat_app_thrwat/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Image.asset('assets/images/scholar.png'),
            const Text(
              'Scholar Chat',
              style: TextStyle(
                  fontSize: 35, fontFamily: 'Pacifico', color: Colors.white),
            ),
            const Spacer(
              flex: 1,
            ),
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
                TextButton(onPressed: () {
                  Navigator.pushNamed(context, 'register');
                }, child: const Text('Sign Up'))
              ],
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
