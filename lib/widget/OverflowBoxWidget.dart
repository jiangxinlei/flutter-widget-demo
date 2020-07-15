import 'package:flutter/material.dart';

class OverflowBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OverflowBox'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.blue[50],
          child: Align(
            alignment: Alignment(1, 1),
            child: SizedBox(
              width: 10,
              height: 20,
              child: OverflowBox(
                minHeight: 0,
                minWidth: 0,
                maxHeight: 50,
                maxWidth: 100,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}