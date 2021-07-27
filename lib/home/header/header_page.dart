/* /////////////////////////////////////
[summary] ヘッダー
///////////////////////////////////// */
import 'package:flutter/material.dart';
import 'package:sales_finder/common/manager/firebase_auth.dart';
import 'package:sales_finder/common/text_data.dart';

class HeaderPage extends StatelessWidget with PreferredSizeWidget {
  final Set<String> _sideMenuList = {
    TextHeader.TXT_SIDE_MENU_PROFILE,
    TextHeader.TXT_SIDE_MENU_SETTING,
    TextHeader.TXT_SIDE_MENU_SIGN_OUT
  };

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(TextHeader.TXT_APP_TITLE),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () => {},
        ),
        PopupMenuButton<String>(
          onSelected: handleClick,
          itemBuilder: (BuildContext context) {
            return _sideMenuList
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
      case TextHeader.TXT_SIDE_MENU_PROFILE:
        break;
      case TextHeader.TXT_SIDE_MENU_SETTING:
        break;
      case TextHeader.TXT_SIDE_MENU_SIGN_OUT:
        FirebaseAuthManager().signOut();
        break;
    }
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
