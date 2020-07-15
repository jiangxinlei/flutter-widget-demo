import 'package:flutter/material.dart';

class RotationTransitionWidget extends StatefulWidget {
  @override
  _RotationTransitionWidgetState createState() => _RotationTransitionWidgetState();
}

class _RotationTransitionWidgetState extends State<RotationTransitionWidget> with TickerProviderStateMixin {
  final Tween<double> turnsTween = Tween<double>(begin: 1, end: 3);

  AnimationController _controller;

  bool _transion = true;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this, 
      duration: Duration(seconds: 1)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RotationTransition'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RotationTransition(
              turns: turnsTween.animate(_controller),
              child: Container(
                width: 200,
                height: 200,
                padding: EdgeInsets.all(20),
                child: FlutterLogo(),
              ),
            ),

            SizedBox(height: 20),

            FlatButton(
              onPressed: () {
                if (_transion) {
                  _controller.forward();
                } else {
                  _controller.reverse();
                }

                _transion = !_transion;
              }, 
              child: Text('click')
            )
          ],
        ),
      ),
    );
  }
}