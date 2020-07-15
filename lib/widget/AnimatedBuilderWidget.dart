import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedBuilderWidget extends StatefulWidget {
  @override
  _AnimatedBuilderWidgetState createState() => _AnimatedBuilderWidgetState();
}

class _AnimatedBuilderWidgetState extends State<AnimatedBuilderWidget> with SingleTickerProviderStateMixin {

  AnimationController _controller;   // 1、创建动画控制器的来源

  @override
  void initState() {
    super.initState();
    // 2、初始化动画控制器
    _controller = AnimationController(
      duration: const Duration(
        seconds: 10,
      ),
      vsync: this
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedBuilder'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,   // 3、引入动画控制器
          child: Container(
            width: 200, 
            height: 200,
            color: Colors.greenAccent,
          ),
          builder: (BuildContext context, Widget child) {   // 动画部件的构建器
            return Transform.rotate(                      // 旋转变换效果
              angle: _controller.value * 2.0 * math.pi,   // 这里的值一定要是 math.pi ，不然会报错
              child: child,
            );
          },
        )
      ),
    );
  }
}
