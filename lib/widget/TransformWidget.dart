import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransformWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transform'),
      ),
      body: Center(
        child: Container(
          color: Colors.black,
          child: Transform(
            alignment: Alignment.topRight,
            transform: Matrix4.skewY(0.3)..rotateZ(-math.pi / 12),
            child: Container(
              padding: EdgeInsets.all(8),
              color: Color(0xFFE8581C),
              child: Text('Apartment for rent!'),
            ),
          ),
        ),
      ),
    );
  }
}