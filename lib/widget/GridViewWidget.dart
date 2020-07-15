import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),

      // 可以使用 OrientationBuilder 更改列数
      // 通过父级 widget 的可用宽度和高度计算当前的 Orientation，并在父窗口大小更改时重建
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            // 在纵向模式下显示两列，在横向模式下显示三列
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            primary: false,
            padding: EdgeInsets.all(20),
            crossAxisSpacing: 10,
            children: List.generate(20, (index) {
              return Center(
                child: Text('Item $index'),
              );
            }),
          );
        },
      ),
    );
  }
}