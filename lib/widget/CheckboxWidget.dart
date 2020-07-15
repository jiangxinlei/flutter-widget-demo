import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool _check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox'),
      ),
      body: Center(
        child: Checkbox(
          value: _check, 
          onChanged: (bool newVal) {
            setState(() {
              _check = newVal;
            });
          }
        ),
      ),
    );
  }
}