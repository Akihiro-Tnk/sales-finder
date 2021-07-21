/* /////////////////////////////////////
[summary] UI/チャット
///////////////////////////////////// */

import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  static const String _text = 'チャット画面';
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
