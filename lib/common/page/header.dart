/* /////////////////////////////////////
[summary] ヘッダー
///////////////////////////////////// */
import 'package:flutter/material.dart';
import 'package:sales_finder/common/manager/firebase_auth.dart';
import 'package:sales_finder/sign_in/sign_in_page.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Sales Finder'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () => {},
        ),
        PopupMenuButton<String>(
          onSelected: handleClick,
          itemBuilder: (BuildContext context) {
            return {'Profile', 'Settings', 'SignOut'}
                .map((String choice) => PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    ))
                .toList();
          },
        ),
      ],
    );
  }

  void handleClick(String value) {
    switch (value) {
      case 'Profile':
        break;
      case 'Settings':
        break;
      case 'SignOut':
        FirebaseAuthManager().signOut();
        break;
    }
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
