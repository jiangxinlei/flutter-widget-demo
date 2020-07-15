import 'package:flutter/material.dart';

class FlatButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlatButton'),
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {}, 
          color: Colors.red,
          child: Text('FlatButton'),
          textColor: Colors.blue,
        ),
      ),
    );
  }
}