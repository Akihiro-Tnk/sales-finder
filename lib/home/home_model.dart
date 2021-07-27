/* /////////////////////////////////////
[summary] 内部処理/ホーム画面
///////////////////////////////////// */

import 'package:flutter/material.dart';
import 'package:sales_finder/chat/chat_page.dart';
import 'package:sales_finder/home/home_page.dart';
import 'package:sales_finder/search/search_page.dart';

class HomeModel {
  final List<Center> pageList = [
    HomePage().createCenter(),
    SearchPage().createCenter(),
    ChatPage().createCenter(),
  ];
}
