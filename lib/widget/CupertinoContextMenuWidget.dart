import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoContextMenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoContextMenu'),
      ),
      body: Center(
        child: CupertinoContextMenu(
          child: Container(
            width: 100,
            height: 60,
            color: Colors.red,
          ),
          actions: <Widget>[
            CupertinoContextMenuAction(
              child: Text('Action one'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoContextMenuAction(
              child: Text('Action two'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}