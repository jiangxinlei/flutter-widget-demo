import 'package:flutter/material.dart';

class PhysicalModelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PhysicalModel'),
      ),
      body: Center(
        child: PhysicalModel(
          elevation: 6,
          shape: BoxShape.rectangle,
          shadowColor: Colors.red,
          color: Colors.white,
          child: Container(
            height: 120,
            width: 120,
            color: Colors.blue[50],
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
      ),
    );
  }
}