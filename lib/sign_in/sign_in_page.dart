import 'package:flutter/material.dart';
import 'package:sales_finder/common/manager/firebase_auth.dart';
import 'package:sales_finder/sign_up/sign_up_page.dart';

class SignInPage extends StatelessWidget {
  String _email = '';
  String _password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('サインイン'),
            Text('Eメール'),
            TextField(
              onChanged: (context) {
                _email = context;
                print(_email);
              },
            ),
            Text('パスワード'),
            TextField(
              onChanged: (context) {
                _password = context;
                print(_password);
              },
            ),
            ElevatedButton(
              child: Text('Sign in with Email'),
              onPressed: () {
                FirebaseAuthManager()
                    .signInWithEmailAndPassword(_email, _password);
                print(_email);
                print(_password);
              },
            ),
            ElevatedButton(
              child: Text('Sign in with Google'),
              onPressed: () {
                FirebaseAuthManager().signInWithGoogle();
              },
            ),
            InkWell(
              child: Text('サインアップ？？'),
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
