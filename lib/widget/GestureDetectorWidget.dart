import 'package:flutter/material.dart';

class GestureDetectorWidget extends StatefulWidget {
  @override
  _GestureDetectorWidgetState createState() => _GestureDetectorWidgetState();
}

class _GestureDetectorWidgetState extends State<GestureDetectorWidget> {
  bool _light = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GestureDetector'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _light = !_light;
            });
          },
          child: Container(
            color: _light ? Colors.yellow : Colors.red,
            child: Text('Turn lights ${_light ? 'on' : 'off'}'),
          ),
        ),
      ),
    );
  }
}