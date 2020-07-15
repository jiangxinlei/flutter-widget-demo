/**
 * 在 Container 部件里，将 child 部件放在什么位置，Center 部件可以
 * 但是 Align 会更好用，可以明确的在某个具体的位置放置
 * 同时，属性 alignment 还支持设置数值，从 -1 到 1
 * alignment: Alignment(-1, 1)
 * 还可以用 Stack 部件将多个 Align 部件叠起来
 */
import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              '在 Container 部件里，将 child 部件放在什么位置，Center 部件可以。\n' 
              '但是 Align 会更好用，可以明确的在某个具体的位置放置；\n' 
              '同时，属性 alignment 还支持设置数值，从 -1 到 1。\n' 
              '还可以用 Stack 部件将多个 Align 部件叠起来',
            ),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.blue[50],
            child: Align(
              // alignment: Alignment.topRight,
              alignment: Alignment(0, 0),   // 等于 center
              child: Icon(
                Icons.wb_sunny,
                size: 60,
              )
            ),
          )
        ],
      )
    );
  }
}