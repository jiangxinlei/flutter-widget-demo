import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class CheckboxListTileWidget extends StatefulWidget {
  @override
  _CheckboxListTileWidgetState createState() => _CheckboxListTileWidgetState();
}

class _CheckboxListTileWidgetState extends State<CheckboxListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckboxListTile'),
      ),
      body: Center(
        child: CheckboxListTile(
          title: const Text('Animate slowly'),
          value: timeDilation != 1.0, 
          onChanged: (bool val) {
            setState(() {
              timeDilation = val ? 3.0 : 1.0;
            });
          },
          secondary: const Icon(Icons.hourglass_empty),
        ),
      ),
    );
  }
}