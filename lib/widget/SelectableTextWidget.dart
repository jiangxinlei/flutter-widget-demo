import 'package:flutter/material.dart';

class SelectableTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SelectableText'),
      ),
      body: Center(
        // 要使用 RichText 可被选择，使用 SelectableText.rich
        child: SelectableText(
          '书月秋亭',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.blue
          ),
          showCursor: true,   // 显示选择的起点
          cursorWidth: 5,      // 从这里到往下三个属性定义光标的外观
          cursorRadius: Radius.circular(5),
          cursorColor: Colors.green,

          // 指定选择文本后可以的操作，默认情况下，可选择所有文字并复制
          toolbarOptions: ToolbarOptions(copy: true),  

          // 添加 onTab 处理，响应单击手势
          onTap: () {
            print('jxl');
          },

          // 有一些文字长度超过文本框，可以向下滚动以选择更多文本
          // scrollPhysics 可自定义滚动行为
          scrollPhysics: ClampingScrollPhysics(),
        ),
      ),
    );
  }
}