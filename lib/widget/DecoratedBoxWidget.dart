import 'package:flutter/material.dart';

class DecoratedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DecoratedBox'),
      ),
      body: Center(
        child: DecoratedBox(
          position: DecorationPosition.background,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            border: Border.all(
              color: Color(0xff000000),
              style: BorderStyle.solid,
              width: 4
            ),
            borderRadius: BorderRadius.zero,
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Color(0x66000000),
                blurRadius: 10,
                spreadRadius: 4
              )
            ]
          ),
          child: Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.all(20),
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}