import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text('one-line listTile'),
            ),
          ),

          Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('one-line with leading'),
            ),
          ),

          Card(
            child: ListTile(
              title: Text('one-line with trailing'),
              trailing: Icon(Icons.more_vert),
            ),
          ),

          Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('one-line with trailing and leading'),
              trailing: Icon(Icons.more_vert),
            ),
          ),

          Card(
            child: ListTile(
              title: Text('one-line dense ListTile'),
              dense: true,
            ),
          ),

          Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('two-line ListTile'),
              subtitle: Text('here is a second line'),
              trailing: Icon(Icons.more_vert),
            ),
          ),

          Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('three-line ListTile'),
              subtitle: Text('A sufficiently long subtitle warrants three lines.'),
              trailing: Icon(Icons.more_vert),
              isThreeLine: true,
            ),
          ),
        ],
      ),
    );
  }
}