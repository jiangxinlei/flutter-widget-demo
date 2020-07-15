/**
 * ConstrainedBox 部件可以指定其子部件的最大或最小宽度和高度
 * 比如可以约束文本部件的最大宽度，使其跨越多行
 * 比如约束按钮的最小高度，来拉伸凸起按钮的高度
 */

import 'package:flutter/material.dart';

class ConstrainedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ConstrainedBox'),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Card(
            child: Text('书月秋亭'),
          ),
        ),
      ),
    );
  }
}