import 'package:flutter/material.dart';

class FlutterLogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlutterLogo'),
      ),
      body: Center(
        child: FlutterLogo(
          size: 60,
        ),
      ),
    );
  }
}