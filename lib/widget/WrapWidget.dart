/**
 * Wrap
 * 类似 flex
 * 小部件横向布局，可能没有足够的空间
 * Wrap 为单个图标逐一进行布局，并构成纵向或横向的一列，空间不足时，便会新增一行
 */
import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap'),
      ),
      body: Center(
        child: Wrap(
          direction: Axis.horizontal,   // 规定 Wrap 的子部件的布局方向，horizontal - 横向，vertical - 纵向
          alignment: WrapAlignment.end, // 
          spacing: 8,   // 列间距
          runSpacing: 4,   // 行间距
          children: <Widget>[
            Chip(
              avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('AH')),
              label: Text('Hamilton'),
            ),
            Chip(
              avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('ML')),
              label: Text('Lafayette'),
            ),
            Chip(
              avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('HM')),
              label: Text('Mulligan'),
            ),
            Chip(
              avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('JL')),
              label: Text('Laurens'),
            ),
          ],
        )
      ),
    );
  }
}