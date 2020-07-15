import 'package:flutter/material.dart';

class ToggleButtonsWidget extends StatefulWidget {
  @override
  _ToggleButtonsWidgetState createState() => _ToggleButtonsWidgetState();
}

class _ToggleButtonsWidgetState extends State<ToggleButtonsWidget> {
  List<bool> _selected = List.generate(3, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToggleButtons'),
      ),
      body: Center(
        child: ToggleButtons(
          children: <Widget>[
            Icon(Icons.ac_unit),
            Icon(Icons.call),
            Icon(Icons.cake),
          ],
          onPressed: (int index) {
            setState(() {
              _selected[index] = !_selected[index];
            });
          },
          isSelected: _selected,
          color: Colors.green,   // 未选择颜色
          selectedColor: Colors.orange, // 选择后颜色
          fillColor: Colors.red,   // 选择后的填充颜色
          renderBorder: false,     // 不加边框

          // 边框的形状，颜色，大小，选择后边框颜色
          borderRadius: BorderRadius.circular(30),
          borderWidth: 5,
          borderColor: Colors.orange,
          selectedBorderColor: Colors.deepOrange,

          // 长按按钮后的突出显示颜色
          splashColor: Colors.purple,
          highlightColor: Colors.yellow,

          // 被禁用的颜色
          disabledColor: Colors.grey[300],
          disabledBorderColor: Colors.blueGrey,

          // 如果应用程序在带有键盘的环境下运行，可自定义颜色表示按钮已对准焦点
          // focusColor: Colors.cyan,
          // focusNodes: [
            
          // ],
          // hoverColor: Colors.cyanAccent,
        ),
      ),
    );
  }
}