import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),

            Expanded(
              child: Container(
                color: Colors.blue,
                width: 100,
              )
            ),

            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}