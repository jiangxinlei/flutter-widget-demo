import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _slider = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Center(
        child: Slider(
          value: _slider, 
          min: 0,
          max: 100,
          label: '$_slider',   // 设置了 divisions 才有效
          divisions: 8,
          onChanged: (val) {
            setState(() {
              _slider = val.roundToDouble();
            });
          }
        ),
      ),
    );
  }
}