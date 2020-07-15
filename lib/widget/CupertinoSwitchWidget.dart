import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSwitchWidget extends StatefulWidget {
  @override
  _CupertinoSwitchWidgetState createState() => _CupertinoSwitchWidgetState();
}

class _CupertinoSwitchWidgetState extends State<CupertinoSwitchWidget> {
  bool _switch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoSwitch'),
      ),
      body: Center(
        child: MergeSemantics(
          child: ListTile(
            title: Text('light'),
            trailing: CupertinoSwitch(
              value: _switch, 
              onChanged: (bool val) {
                setState(() {
                  _switch = val;
                });
              },
            ),
            onTap: () {
              setState(() {
                _switch = !_switch;
              });
            },
          ),
        ),
      ),
    );
  }
}