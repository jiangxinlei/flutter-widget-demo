import 'package:flutter/material.dart';

class OpacityWidget extends StatefulWidget {
  @override
  _OpacityWidgetState createState() => _OpacityWidgetState();
}

class _OpacityWidgetState extends State<OpacityWidget> {
  bool _opacity = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Opacity(
              opacity: _opacity ? 1 : 0,
              child: Text('opacity text'),
            ),

            RaisedButton(
              onPressed: () {
                setState(() {
                  _opacity = !_opacity;
                });
              },
              child: Text('change opacity'),
            )
          ],
        ),
      ),
    );
  }
}