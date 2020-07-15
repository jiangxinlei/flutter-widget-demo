import 'package:flutter/material.dart';

class SizedOverflowBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedOverflowBox'),
      ),
      body: Center(
        child: Container(
          color: Colors.blue[50],
          child: SizedOverflowBox(
            size: Size(100, 100),
            alignment: AlignmentDirectional.bottomStart,
            child: Container(
              height: 50,
              width: 150,
            ),
          ),
        ),
      ),
    );
  }
}