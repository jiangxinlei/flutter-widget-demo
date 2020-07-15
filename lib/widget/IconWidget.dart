import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon'),
      ),
      body: Center(
        child: Icon(
          Icons.add,
          color: Colors.pink,
          size: 30,
        ),
      ),
    );
  }
}