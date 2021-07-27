/* /////////////////////////////////////
[summary] 内部処理/フッター
///////////////////////////////////// */

import 'package:flutter/cupertino.dart';

class FooterModel extends ChangeNotifier {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  void onItemTapped(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
