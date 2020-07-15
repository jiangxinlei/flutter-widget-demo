import 'package:flutter/material.dart';

class AnimatedAlignWidget extends StatefulWidget {
  @override
  _AnimatedAlignWidgetState createState() => _AnimatedAlignWidgetState();
}

class _AnimatedAlignWidgetState extends State<AnimatedAlignWidget> {
  AlignmentGeometry _alignment = Alignment.bottomLeft;

  void _changeAlignment() {
    setState(() {
      _alignment = _alignment == Alignment.topRight ? Alignment.bottomLeft : Alignment.topRight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedAlign'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            width: 200,
            height: 200,
            color: Colors.blue[50],
            child: AnimatedAlign(
              alignment: _alignment, 
              duration: Duration(seconds: 3),
              curve: Curves.ease,
              child: FlutterLogo(
                size: 60,
              ),
            )
          ),
          FlatButton(
            color: Colors.greenAccent,
            onPressed: () {
              _changeAlignment();
            }, 
            child: Text(
              'change position',
              style: TextStyle(
                color: Colors.white
              ),
            )
          )
        ],
      ),
    );
  }
}