import 'package:flutter/material.dart';

class DecoratedBoxTransitionWidget extends StatefulWidget {
  @override
  _DecoratedBoxTransitionWidgetState createState() => _DecoratedBoxTransitionWidgetState();
}

class _DecoratedBoxTransitionWidgetState extends State<DecoratedBoxTransitionWidget> with TickerProviderStateMixin {
  bool _transition = true;

  AnimationController _controller;

  final DecorationTween decorationTween = DecorationTween(
    begin: BoxDecoration(
      color: const Color(0xFFFFFFFF),
      border: Border.all(
        color: const Color(0xFF000000),
        style: BorderStyle.solid,
        width: 4.0,
      ),
      borderRadius: BorderRadius.zero,
      shape: BoxShape.rectangle,
      boxShadow: const <BoxShadow>[
        BoxShadow(
          color: Color(0x66000000),
          blurRadius: 10.0,
          spreadRadius: 4.0,
        )
      ],
    ),
    end: BoxDecoration(
      color: const Color(0xFF000000),
      border: Border.all(
        color: const Color(0xFF202020),
        style: BorderStyle.solid,
        width: 1.0,
      ),
      borderRadius: BorderRadius.circular(10.0),
      shape: BoxShape.rectangle,
    ),
  );

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
        title: Text('DecoratedBoxTransition'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DecoratedBoxTransition(
              decoration: decorationTween.animate(_controller),
              position: DecorationPosition.background,
              child: Container(
                width: 200,
                height: 200,
                padding: EdgeInsets.all(20),
                child: FlutterLogo(),
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
              child: Text(
                'transition'
              )
            )
          ],
        ),
      )
    );
  }
}