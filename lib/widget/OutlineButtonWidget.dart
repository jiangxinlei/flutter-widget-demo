import 'package:flutter/material.dart';

class OutlineButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OutlineButton'),
      ),
      body: Center(
        child: OutlineButton(
          onPressed: () {},
          child: Text('OutlineButton'),
        ),
      ),
    );
  }
}