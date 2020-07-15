/**
 * AnimatedPadding 动态改动部件之间的空格和间隙
 */
import 'package:flutter/material.dart';

class AnimatedPaddingWidget extends StatefulWidget {
  @override
  _AnimatedPaddingWidgetState createState() => _AnimatedPaddingWidgetState();
}

class _AnimatedPaddingWidgetState extends State<AnimatedPaddingWidget> {
  // 设置动态 padding 值有两种方式
  // 1、使用 EdgeInsetsGeometry 抽象类定义一个属性，值是继承自 EdgeInsetsGeometry 的 EdgeInsets 类
  // EdgeInsetsGeometry _padding = EdgeInsets.all(20.0);   

  // 2、定义一个 double 类型的值
  double _padding1 = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPadding'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 120,
              width: 120,
              color: Colors.blue[50],
              child: AnimatedPadding(
                // padding: _padding,                 // 第一种使用方式
                padding: EdgeInsets.all(_padding1),   // 第二种使用方式
                curve: Curves.easeIn,    // 动画的曲线
                duration: Duration(seconds: 2),
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ),
            RaisedButton(
              color: Colors.greenAccent,
              onPressed: () {
                setState(() {
                  _padding1 = 30.0;
                });
              },
              child: Text(
                'change padding',
                style: TextStyle(
                  color: Colors.red
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}