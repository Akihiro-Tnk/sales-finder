import 'package:flutter/material.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Sales Finder'),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
