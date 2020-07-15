/**
 * 控制显示动画
 */
import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  @override
  _AnimatedContainerWidgetState createState() => _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {

  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: AnimatedContainer(
            width: selected ? 200 : 100,
            height: selected ? 100 : 200,
            color: selected ? Colors.red : Colors.blue,
            alignment: selected ? Alignment.center : Alignment.topCenter,
            duration: Duration(seconds: 3),   // 动画的长度由持续时间参数控制
            curve: Curves.fastOutSlowIn,      // 动画的个性化效果
            child: FlutterLogo(
              size: 60,
            ),
          ),
        )
      ),
    );
  }
}