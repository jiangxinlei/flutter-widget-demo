/**
 * Stack 可叠加容器
 * 
 */

import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Center(
        child: Stack(
          // Stack 默认大小，适配所有未定位的子节点
          // 设置为 StackFit.expand 可填充 Stack 的父节点
          fit: StackFit.loose,  


          // 所有 Stack 子节点，默认与 topStart 对齐
          // 为所有未定位的定位位置
          alignment: AlignmentDirectional.bottomStart,


          // 有时会将子节点部件推到 Stack 界限外，用下面属性控制是否展示，控制其是否超出界限或被裁剪
          overflow: Overflow.visible,
          
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),

            // 可用 Positioned 指定子部件的位置
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 90,
                height: 90,
                color: Colors.yellow,
              ),
            ),
            Container(
              width: 90,
              height: 90,
              color: Colors.green,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}