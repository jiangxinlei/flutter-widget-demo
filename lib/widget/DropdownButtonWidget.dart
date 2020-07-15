import 'package:flutter/material.dart';

class DropdownButtonWidget extends StatefulWidget {
  @override
  _DropdownButtonWidgetState createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  String _dropdownVal = 'one';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropdownButton'),
      ),
      body: Center(
        child: DropdownButton<String>(
          value: _dropdownVal,
          onChanged: (String newVal) {
            setState(() {
              _dropdownVal = newVal;
            });
          },
          items: <String>['one', 'Two', 'Three', 'Four']
            .map<DropdownMenuItem<String>>((String val) {
              return DropdownMenuItem<String>(
                child: Text(val),
                value: val,
              );
            }).toList()
        ),
      ),
    );
  }
}