/* /////////////////////////////////////
[summary] UI/サインアップ
///////////////////////////////////// */
import 'package:flutter/material.dart';
import 'sign_up_model.dart';
import 'package:sales_finder/common/manager/firebase_auth.dart';
import 'package:sales_finder/home/home_page.dart';
import '../sign_in/sign_in_page.dart';
import 'package:sales_finder/common/text_data.dart';

class SignUpPage extends StatelessWidget {
  final SignUpModel _signUpModel = SignUpModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(TextSignUp.TXT_SIGN_UP),
            Text(TextSignUp.TXT_EMAIL),
            TextField(
              onChanged: (context) {
                _signUpModel.email = context;
              },
            ),
            Text(TextSignUp.TXT_PASSWORD),
            TextField(
              onChanged: (context) {
                _signUpModel.password = context;
              },
            ),
            ElevatedButton(
              child: Text(TextSignUp.TXT_SIGN_UP_EMAIL),
              onPressed: () {
                FirebaseAuthManager().signUpWithEmailAndPassword(
                    _signUpModel.email, _signUpModel.password);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              },
            ),
            ElevatedButton(
              child: Text(TextSignUp.TXT_SIGN_UP_GOOGLE),
              onPressed: () {
                FirebaseAuthManager().signInWithGoogle();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              },
            ),
            InkWell(
              child: Text(TextSignUp.TXT_MOVE_TO_SIGN_IN),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInPage(),
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
