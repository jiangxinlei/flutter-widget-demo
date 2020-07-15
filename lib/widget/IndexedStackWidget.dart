import 'package:flutter/material.dart';

class IndexedStackWidget extends StatefulWidget {
  @override
  _IndexedStackWidgetState createState() => _IndexedStackWidgetState();
}

class _IndexedStackWidgetState extends State<IndexedStackWidget> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IndexedStack'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              child: IndexedStack(
                index: _index,
                children: <Widget>[
                  Container(
                    color: Colors.pink,
                    child: Center(
                      child: Text('Page 1'),
                    ),
                  ),
                  Container(
                    color: Colors.cyan,
                    child: Center(
                      child: Text('Page 2'),
                    ),
                  ),
                  Container(
                    color: Colors.deepPurple,
                    child: Center(
                      child: Text('Page 3'),
                    ),
                  ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    if (_index <= 0) return;
                    setState(() {
                      _index -= 1;
                    });
                  }, 
                  child: Text('prev')
                ),
                FlatButton(
                  onPressed: () {
                    if (_index >= 2) return;
                    setState(() {
                      _index += 1;
                    });
                  }, 
                  child: Text('next')
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}