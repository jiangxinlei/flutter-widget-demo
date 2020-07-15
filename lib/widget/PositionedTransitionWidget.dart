import 'package:flutter/material.dart';

class PositionedTransitionWidget extends StatefulWidget {
  @override
  _PositionedTransitionWidgetState createState() => _PositionedTransitionWidgetState();
}

class _PositionedTransitionWidgetState extends State<PositionedTransitionWidget> with SingleTickerProviderStateMixin {
  final RelativeRectTween relativeRectTween = RelativeRectTween(
    begin: RelativeRect.fromLTRB(40, 40, 0, 0),
    end: RelativeRect.fromLTRB(0, 0, 40, 40),
  );

  AnimationController _controller;

  bool _transition = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PositionedTransition'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.blue[50],
              height: 300,
              child: Stack(   // PositionedTransition 必须被 Stack 包裹
                children: <Widget>[
                  PositionedTransition(
                    rect: relativeRectTween.animate(_controller), 
                    child: Container(
                      width: 200,
                      height: 200,
                      padding: EdgeInsets.all(20),
                      child: FlutterLogo(),
                    )
                  ),
                ],
              )
            ),

            SizedBox(height: 20),

            FlatButton(
              onPressed: () {
                if (_transition) {
                  _controller.forward();
                } else {
                  _controller.reverse();
                }
                _transition = !_transition;
              }, 
              child: Text('click')
            )
          ],
        ),
      ),
    );
  }
}