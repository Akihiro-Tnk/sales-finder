/* /////////////////////////////////////
[summary] UI/ホーム画面
///////////////////////////////////// */
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sales_finder/common/text_data.dart';
import 'package:sales_finder/home/header/header_page.dart';
import 'package:sales_finder/home/footer/footer_model.dart';
import 'package:sales_finder/home/home_model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FooterModel>(
      create: (_) => FooterModel(),
      child: Consumer<FooterModel>(builder: (context, model, child) {
        return Scaffold(
          appBar: HeaderPage(),
          body: HomeModel().pageList[model.selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
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
            currentIndex: model.selectedIndex,
            onTap: model.onItemTapped,
            type: BottomNavigationBarType.fixed,
          ),
        );
      }),
    );
  }

  Center createCenter() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(TextHome.TXT_HOME),
        ],
      ),
    );
  }
}
