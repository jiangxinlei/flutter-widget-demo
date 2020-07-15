import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSliderWidget extends StatefulWidget {
  @override
  _CupertinoSliderWidgetState createState() => _CupertinoSliderWidgetState();
}

class _CupertinoSliderWidgetState extends State<CupertinoSliderWidget> {
  double _progress = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoSlider'),
      ),
      body: Center(
        child: CupertinoSlider(
          value: _progress,
          min: 0,
          max: 100,
          divisions: 4,    // 把 slider 分为几段
          onChanged: (val) {
            print(val);
            setState(() {
              _progress = val.roundToDouble();
            });
          },
        ),
      ),
    );
  }
}