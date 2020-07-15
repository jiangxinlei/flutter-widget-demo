import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTabBarWidget extends StatefulWidget {
  @override
  _CupertinoTabBarWidgetState createState() => _CupertinoTabBarWidgetState();
}

class _CupertinoTabBarWidgetState extends State<CupertinoTabBarWidget> {
  int _curIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoTabBar'),
      ),
      body: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.circle),
            title: Text('Tab 1')
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.add),
            title: Text('Tab 2')
          )
        ],
        currentIndex: _curIndex,
        onTap: (int val) {
          print(val);
          setState(() {
            _curIndex = val;
          });
        },
      ),
    );
  }
}