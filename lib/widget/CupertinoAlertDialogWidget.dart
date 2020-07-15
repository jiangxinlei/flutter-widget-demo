import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAlertDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoAlertDialog'),
      ),
      body:  Center(
        child: RaisedButton(
          child: Text('open CupertinoAlertDialog'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return CupertinoAlertDialog(
                  title: Text('Allow Maps to assess your location'),
                  content: Text('your current location will be display'),
                  actions: <Widget>[
                    CupertinoDialogAction(
                      child: Text('dont allow'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    CupertinoDialogAction(
                      child: Text('allow'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                );
              }
            );
          }
        )
      ),
    );
  }
}