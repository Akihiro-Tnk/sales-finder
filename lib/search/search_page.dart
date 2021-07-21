/* /////////////////////////////////////
[summary] UI/検索
///////////////////////////////////// */

import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  static const String _text = '検索画面';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: createCenter(),
    );
  }

  Center createCenter() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(_text),
        ],
      ),
    );
  }
}
