/* /////////////////////////////////////
[summary] UI/フッター
///////////////////////////////////// */
import 'package:flutter/material.dart';
import 'package:sales_finder/home/home_page.dart';

class Footer extends StatefulWidget {
  @override
  _Footer createState() => _Footer();

  int getSelectedIndex() {
    return _Footer().getSelectedIndex();
  }
}

class _Footer extends State<Footer> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int getSelectedIndex() {
    return _selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble),
          label: 'Chat',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
    );
  }
}
