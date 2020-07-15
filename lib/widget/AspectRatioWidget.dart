// AspectRatio 是一个自适应的容器组件
// 比如下面它的父容器 Container 的宽度是 300，
// AspectRatio 设置 aspectRatio: 4 / 3，表示当前容器的大小是 4倍长对 3 倍宽，宽是 300，长就是 400

import 'package:flutter/material.dart';

class AspectRatioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AspectRatio'),
      ),
      body: Container(
        width: 300,
        child: AspectRatio(
          aspectRatio: 4 / 3,
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}