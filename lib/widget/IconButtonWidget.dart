import 'package:flutter/material.dart';

class IconButtonWidget extends StatefulWidget {
  @override
  _IconButtonWidgetState createState() => _IconButtonWidgetState();
}

class _IconButtonWidgetState extends State<IconButtonWidget> {
  int _volume = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IconButton'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.volume_up),
              tooltip: 'Increase volume by 10',
              onPressed: () {
                setState(() {
                  _volume += 10;
                });
              },
            ),

            Text('Volume : $_volume')
          ],
        ),
      ),
    );
  }
}