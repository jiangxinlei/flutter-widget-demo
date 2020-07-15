import 'package:flutter/material.dart';

class RangeSliderWidget extends StatefulWidget {
  @override
  _RangeSliderWidgetState createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  double _startVal = 10;
  double _endVal = 80;

  var _selectedRange = RangeValues(20, 60);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RangeSlider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            // 两种设置方式
            RangeSlider(
              values: RangeValues(_startVal, _endVal),
              min: 0,
              max: 100,
              divisions: 10,
              labels: RangeLabels('$_startVal', '$_endVal'),
              onChanged: (val) {
                setState(() {
                  _startVal = val.start.roundToDouble();
                  _endVal = val.end.roundToDouble();
                });
              },
            ),

            SizedBox(height: 20),

            RangeSlider(
              values: _selectedRange,
              min: 0,
              max: 100,
              divisions: 10,
              labels: RangeLabels('${_selectedRange.start}', '${_selectedRange.end}'),
              onChanged: (newRange) {
                setState(() {
                  _selectedRange = newRange;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}