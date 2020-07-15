import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RichText'),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            text: 'Hello',
            style: DefaultTextStyle.of(context).style,   // 设置默认文字样式
            children: <TextSpan>[
              TextSpan(
                text: 'blod',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                )
              ),
              TextSpan(
                text: 'world'
              )
            ]
          ),
        ),
      ),
    );
  }
}