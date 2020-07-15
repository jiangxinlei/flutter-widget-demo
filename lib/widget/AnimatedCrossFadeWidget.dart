import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  @override
  _AnimatedCrossFadeWidgetState createState() => _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedCrossFade'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedCrossFade(
              firstChild: const FlutterLogo(
                style: FlutterLogoStyle.horizontal,
                size: 100,
              ), 
              secondChild: const FlutterLogo(
                style: FlutterLogoStyle.stacked,
                size: 100,
              ), 
              crossFadeState: selected ? CrossFadeState.showFirst : CrossFadeState.showSecond, 
              duration: const Duration(seconds: 2)
            ),
            FlatButton(
              color: Colors.greenAccent,
              onPressed: () {
                setState(() {
                  selected = !selected;
                });
              }, 
              child: Text(
                'change logo',
                style: TextStyle(
                  color: Colors.blue
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}