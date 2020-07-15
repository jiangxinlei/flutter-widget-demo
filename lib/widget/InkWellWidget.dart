import 'package:flutter/material.dart';

class InkWellWidget extends StatefulWidget {
  @override
  _InkWellWidgetState createState() => _InkWellWidgetState();
}

class _InkWellWidgetState extends State<InkWellWidget> {
  double sideLen = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InkWell'),
      ),
      body: Center(
        child: AnimatedContainer(
          height: sideLen,
          width: sideLen,
          duration: Duration(seconds: 2),
          curve: Curves.easeIn,
          child: Material(
            color: Colors.yellow,
            child: InkWell(
              onTap: () {
                setState(() {
                  sideLen == 50 ? sideLen = 100 : sideLen = 50;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}