import 'package:flutter/material.dart';

class SimpleDialogWidget extends StatefulWidget {
  @override
  _SimpleDialogWidgetState createState() => _SimpleDialogWidgetState();
}

class _SimpleDialogWidgetState extends State<SimpleDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleDialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  applicationName: 'showAboutDialog',
                  applicationVersion: '1.0.0',
                );
              },
              child: Text('showAboutDialog'),
            ),

            SizedBox(height: 20),

            RaisedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => SimpleDialog(
                    title: Text('SimpleDialog demo'),
                    children: <Widget>[
                      SimpleDialogOption(
                        child: Text('OK'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),

                      SimpleDialogOption(
                        child: Text('cancel'),
                        onPressed: () {
                          Navigator.pop(context);   // 关闭弹框
                        },
                      )
                    ],
                  ),
                );
              },
              child: Text('showDialog'),
            ),

            SizedBox(height: 20),

            RaisedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('showAlertDialog'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: <Widget>[
                          Text('This is an alert dialog'),
                          Text('add two options')
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      FlatButton(
                        child: Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),

                      FlatButton(
                        child: Text('cancel'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  )
                );
              },
              child: Text('showAlertDialog'),
            ),

          ],
        ),
      ),
    );
  }
}