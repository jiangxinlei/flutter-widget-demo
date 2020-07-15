import 'package:flutter/material.dart';

class AnimatedSwitcherWidget extends StatefulWidget {
  @override
  _AnimatedSwitcherWidgetState createState() => _AnimatedSwitcherWidgetState();
}

class _AnimatedSwitcherWidgetState extends State<AnimatedSwitcherWidget> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedSwitcher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
              child: Text(
                '$_count',
                key: ValueKey<int>(_count),
                style: Theme.of(context).textTheme.display1,
              ),
            ),

            RaisedButton(
              color: Colors.greenAccent,
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
              child: const Text(
                'increment',
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