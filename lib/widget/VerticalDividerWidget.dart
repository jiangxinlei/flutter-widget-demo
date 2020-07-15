import 'package:flutter/material.dart';

class VerticalDividerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VerticalDivider'),
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              child: Text('Item 1'),
            ),

            VerticalDivider(),

            Container(
              child: Text('Item 2'),
            ),

            VerticalDivider(),

            Container(
              child: Text('Item 3'),
            ),
          ],
        ),
      ),
    );
  }
}