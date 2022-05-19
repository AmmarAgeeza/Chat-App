import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  static String id2='RegisterScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 100,
            ),

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
            const SizedBox(
              height: 50,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Register',
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
              title: 'REGISTER',
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('already have account '),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('LOGIN'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
