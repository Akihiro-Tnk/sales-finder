/* /////////////////////////////////////
[summary] 共通/Firebase Cloud Firestore
///////////////////////////////////// */

import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreManager {
  FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<bool> addUser(Map<String, dynamic> userInfo) async {
    try {
      await _firebaseFirestore.collection('users').add(userInfo);
      return true;
    } catch (error) {
      print(error);
      return false;
    }
  }

  //! ユーザ一覧取得
  CollectionReference getUsers() {
    return _firebaseFirestore.collection('users');
  }
}
