import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoButton'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            CupertinoButton(
              child: Text('Button'), 
              onPressed: () {}
            ),
            CupertinoButton.filled(
              child: Text('Button'), 
              onPressed: () {}
            )
          ],
        ),
      ),
    );
  }
}