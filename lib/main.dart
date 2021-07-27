/* /////////////////////////////////////
[summary] アプリ開始
///////////////////////////////////// */
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sales_finder/sign_up/sign_up_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sales Finder',
      home: SignUpPage(),
    );
  }
}
