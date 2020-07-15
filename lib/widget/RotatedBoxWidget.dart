import 'package:flutter/material.dart';

class RotatedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RotatedBox'),
      ),
      body: Center(
        child: RotatedBox(
          quarterTurns: 1,   // 顺时针选装，1 - 旋转 90，2 - 180， 3 - 270， 4 - 360 即不旋转
          child: Text('书月秋亭'),
        ),
      ),
    );
  }
}