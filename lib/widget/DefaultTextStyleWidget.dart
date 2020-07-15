import 'package:flutter/material.dart';

class DefaultTextStyleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DefaultTextStyle'),
      ),
      body: Center(
        child: DefaultTextStyle(
          style: TextStyle(
            fontSize: 60,
            color: Colors.blue,
            fontWeight: FontWeight.bold
          ), 
          child: Text('Flutter')
        ),
      ),
    );
  }
}