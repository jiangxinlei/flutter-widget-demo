/**
 * 使用 FloatingActionButton 最好加上 BottomAppBar
 * 如果需要定义 FloatingActionButton 的位置，使用  FloatingActionButtonLocation
 */

import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButton'),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.yellow,
        child: Container(
          height: 50,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}