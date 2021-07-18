import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthManager extends ChangeNotifier {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  //! @summary  Eメールとパスワードでサインアップ
  //! @param [in] Eメール
  //! @param [in] パスワード
  void signUpWithEmailAndPassword(String email, String password) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (error) {
      print(error);
    }
  }

  //! @summary  Eメールとパスワードでサインイン
  //! @param [in] Eメール
  //! @param [in] パスワード
  void signInWithEmailAndPassword(String email, String password) async {
    try {
      print(email);
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (error) {
      print(error);
    }
  }

  //! @summary  Googleアカウントでサインイン
  void signInWithGoogle() async {
    final GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
        'https://www.googleapis.com/auth/contacts.readonly',
      ],
    );

    GoogleSignInAccount? _googleAccount = await _googleSignIn.signIn();
    if (_googleAccount == null) {
      return;
    }
    GoogleSignInAuthentication _googleAuth =
        await _googleAccount.authentication;
    final _credential = GoogleAuthProvider.credential(
      idToken: _googleAuth.idToken,
      accessToken: _googleAuth.accessToken,
    );
    _firebaseAuth.signInWithCredential(_credential);
  }
}
