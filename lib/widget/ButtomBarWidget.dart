import 'package:flutter/material.dart';

class ButtomBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtomBar'),
      ),
      body: ButtonBar(
        children: <Widget>[
          FlatButton(
            onPressed: () {

            }, 
            child: Text('ok'),
            color: Colors.blue,
          ),
          FlatButton(
            onPressed: () {

            }, 
            child: Text('cancel'),
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}