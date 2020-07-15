import 'package:flutter/material.dart';

class LinearProgressIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LinearProgressIndicator'),
      ),
      body: Center(
        child: LinearProgressIndicator(),
      ),
    );
  }
}