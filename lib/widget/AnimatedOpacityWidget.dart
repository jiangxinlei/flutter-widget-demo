import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  @override
  _AnimatedOpacityWidgetState createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {

  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedOpacity'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 120,
              width: 120,
              color: Colors.blue[50],
              child: AnimatedOpacity(
                opacity: _opacity,
                duration: Duration(seconds: 2),
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            RaisedButton(
              color: Colors.greenAccent,
              onPressed: () {
                setState(() {
                  _opacity = _opacity == 0 ? 1.0 : 0.0;
                });
              },
              child: Text(
                'change logo',
                style: TextStyle(
                  color: Colors.red
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}