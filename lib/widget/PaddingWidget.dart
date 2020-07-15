import 'package:flutter/material.dart';

class PaddingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Text('书月秋亭'),
        ),
      ),
    );
  }
}