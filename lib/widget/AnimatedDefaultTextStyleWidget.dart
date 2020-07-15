import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleWidget extends StatefulWidget {
  @override
  _AnimatedDefaultTextStyleWidgetState createState() => _AnimatedDefaultTextStyleWidgetState();
}

class _AnimatedDefaultTextStyleWidgetState extends State<AnimatedDefaultTextStyleWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedDefaultTextStyle'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedDefaultTextStyle(
              child: Text('书月秋亭'), 
              style: TextStyle(
                fontSize: selected ? 90 : 60,
                color: selected ? Colors.blue : Colors.red,
                fontWeight: FontWeight.bold
              ), 
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
                  color: Colors.red
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}