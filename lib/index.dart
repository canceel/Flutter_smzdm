import 'package:flutter/material.dart';
import 'package:myFlutter/main/Home.dart';
import 'package:myFlutter/main/GoodPrice.dart';
import 'package:myFlutter/main/GoodThing.dart';
import 'package:myFlutter/main/Mine.dart';
import 'package:myFlutter/widget/HomeFilter.dart';

class MyIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Index();
  }
}

class Index extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return IndexState();
  }
}

class IndexState extends State<Index> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: _appBar(),
      body: getBody(),
      bottomNavigationBar: new Material(
        color: Colors.white,
        child: bottomNavigationBar(),
      ),
    );
  }

  Widget getBody() {
    switch (_currentIndex) {
      case 0:
        return home();
      case 1:
        return goodPrice();
      case 2:
        return goodThing();
      case 3:
        return mine();
    }
  }

  //AppBar
  Widget _appBar() {
    switch (_currentIndex) {
      case 0:
        return AppBar(
            backgroundColor: Colors.white,
            title: HomeFilter(text: "什么值得买", type: _currentIndex));
      case 1:
        return AppBar(
            backgroundColor: Colors.white,
            title: HomeFilter(text: "好价", type: _currentIndex));
      case 2:
        return AppBar(
            backgroundColor: Colors.white,
            title: HomeFilter(text: "好物社区", type: _currentIndex));
    }
  }

  //导航栏
  BottomNavigationBarItem _buildItem(
      {String icon, String text, bool isSelected}) {
    return BottomNavigationBarItem(
      icon: new Image.asset(
        icon,
        width: 20.0,
        height: 20.0,
      ),
      title: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.red : Colors.grey,
        ),
      ),
    );
  }

  Widget bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        _buildItem(
            icon: _currentIndex == 0
                ? "assets/images/ic_tab_home_selected.png"
                : "assets/images/ic_tab_home_normal.png",
            text: "首页",
            isSelected: _currentIndex == 0),
        _buildItem(
            icon: _currentIndex == 1
                ? "assets/images/ic_tab_haojia_selected.png"
                : "assets/images/ic_tab_haojia_normal.png",
            text: "好价",
            isSelected: _currentIndex == 1),
        _buildItem(
            icon: _currentIndex == 2
                ? "assets/images/ic_tab_article_selected.png"
                : "assets/images/ic_tab_article_normal.png",
            text: "好物社区",
            isSelected: _currentIndex == 2),
        _buildItem(
            icon: _currentIndex == 3
                ? "assets/images/ic_tab_mine_selected.png"
                : "assets/images/ic_tab_mine_normal.png",
            text: "我的",
            isSelected: _currentIndex == 3),
      ],
      onTap: _onSelectTab,
    );
  }

  void _onSelectTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
