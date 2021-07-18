import 'package:flutter/material.dart';
import 'package:sales_finder/common/page/header.dart';
import 'package:sales_finder/common/page/footer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('ホーム画面'),
          ],
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
