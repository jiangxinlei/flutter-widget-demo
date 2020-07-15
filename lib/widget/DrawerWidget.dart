import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      drawer: Drawer(
        semanticLabel: 'jxl',
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey
              ),
              child: Center(
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: CircleAvatar(
                    child: FlutterLogo(),
                  ),
                ),
              )
            ),

            ListTile(
              leading: Icon(Icons.track_changes),
              title: Text('change history'),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}