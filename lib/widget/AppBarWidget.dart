import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('书月秋亭'),
        automaticallyImplyLeading: true,   // 对返回按钮的设置，true 是有返回按钮，false 没有
        leading: Icon(Icons.navigation),   // 设置返回的图标和功能
        elevation: 10.0,                  // appBar 的阴影
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_alert), 
            tooltip: 'show snacker',
            onPressed: () {

            }
          ),
          IconButton(
            icon: Icon(Icons.navigate_next), 
            tooltip: 'next page',
            onPressed: () {

            }
          ),
        ],
      ),
    );
  }
}