import 'package:flutter/material.dart';
import 'package:sales_finder/common/manager/firebase_auth.dart';
import '../sign_in/sign_in_page.dart';

class SignUpPage extends StatelessWidget {
  String _email = '';
  String _password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('サインアップ'),
            Text('Eメール'),
            TextField(
              onChanged: (context) {
                _email = context;
              },
            ),
            Text('パスワード'),
            TextField(
              onChanged: (context) {
                _password = context;
              },
            ),
            ElevatedButton(
              child: Text('Sign up with Email'),
              onPressed: () {
                FirebaseAuthManager()
                    .signUpWithEmailAndPassword(_email, _password);
              },
            ),
            ElevatedButton(
              child: Text('Sign up with Google'),
              onPressed: () {
                FirebaseAuthManager().signInWithGoogle();
              },
            ),
            InkWell(
              child: Text('サインイン？？'),
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
