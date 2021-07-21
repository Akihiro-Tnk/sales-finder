/* /////////////////////////////////////
[summary] UI/ホーム画面
///////////////////////////////////// */
import 'package:flutter/material.dart';
import 'package:sales_finder/chat/chat_page.dart';
import 'package:sales_finder/common/page/header.dart';
import 'package:sales_finder/common/page/footer.dart';
import 'package:sales_finder/search/search_page.dart';

class HomePage extends StatelessWidget {
  static const String _text = 'ホーム画面';
  static List<Center> _pageList = [
    HomePage().createCenter(),
    SearchPage().createCenter(),
    ChatPage().createCenter(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: _pageList[Footer().getSelectedIndex()],
      bottomNavigationBar: Footer(),
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
