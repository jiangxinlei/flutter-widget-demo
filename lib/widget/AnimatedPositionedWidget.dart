import 'package:flutter/material.dart';

class AnimatedPositionedWidget extends StatefulWidget {
  @override
  _AnimatedPositionedWidgetState createState() => _AnimatedPositionedWidgetState();
}

class _AnimatedPositionedWidgetState extends State<AnimatedPositionedWidget> {

  bool _pos = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPositioned'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              child: Stack(
                children: <Widget>[
                  AnimatedPositioned(
                    child: Container(
                      color: Colors.blue,
                    ), 
                    duration: const Duration(
                      milliseconds: 500
                    ),
                    curve: Curves.fastOutSlowIn,
                    left: _pos ? 10 : 20,
                    top: _pos ? 70 : 20,
                    right: _pos ? 10 : 20,
                    bottom: _pos ? 70 : 20,
                  )
                ],
              )
            ),

            SizedBox(height: 20),

            RaisedButton(
              color: Colors.greenAccent,
              onPressed: () {
                setState(() {
                  _pos = !_pos;
                });
              },
              child: const Text(
                'click',
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