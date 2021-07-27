/* /////////////////////////////////////
[summary] UI/サインイン
///////////////////////////////////// */
import 'package:flutter/material.dart';
import 'sign_in_model.dart';
import 'package:sales_finder/common/manager/firebase_auth.dart';
import 'package:sales_finder/sign_up/sign_up_page.dart';
import 'package:sales_finder/common/text_data.dart';

class SignInPage extends StatelessWidget {
  final SignInModel _signInModel = SignInModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(TextSignIn.TXT_SIGN_IN),
            const Text(TextSignIn.TXT_EMAIL),
            TextField(
              onChanged: (context) {
                _signInModel.email = context;
              },
            ),
            const Text(TextSignIn.TXT_PASSWORD),
            TextField(
              onChanged: (context) {
                _signInModel.password = context;
              },
            ),
            ElevatedButton(
              child: const Text(TextSignIn.TXT_SIGN_IN_EMAIL),
              onPressed: () {
                FirebaseAuthManager().signInWithEmailAndPassword(
                    _signInModel.email, _signInModel.password);
              },
            ),
            ElevatedButton(
              child: const Text(TextSignIn.TXT_SIGN_IN_GOOGLE),
              onPressed: () {
                FirebaseAuthManager().signInWithGoogle();
              },
            ),
            InkWell(
              child: const Text(TextSignIn.TXT_MOVE_TO_SIGN_UP),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpPage(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
