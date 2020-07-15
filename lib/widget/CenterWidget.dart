import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Center'),
      ),
      body: Center(
        child: Container(
          width: 120,
          height: 120,
          color: Colors.blue[50],
          child: Center(
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
      ),
    );
  }
}