import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  @override
  _SwitchWidgetState createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool _switch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
      ),
      body: Center(
        child: Switch(
          value: _switch,
          onChanged: (bool newVal) {
            setState(() {
              _switch = newVal;
            });
          },
        ),
      ),
    );
  }
}