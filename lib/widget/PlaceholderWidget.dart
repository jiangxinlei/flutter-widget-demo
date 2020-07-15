import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Placeholder'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.white,
          child: Placeholder(
            color: Colors.blue[50],
          ),
        ),
      ),
    );
  }
}