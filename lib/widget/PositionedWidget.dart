import 'package:flutter/material.dart';

class PositionedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Positioned'),
      ),
      body: Center(
        child: Container(
          color: Colors.blue[50],
          height: 300,
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 10,
                top: 70,
                right: 10,
                bottom: 70,
                child: Container(
                  color: Colors.blue
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}