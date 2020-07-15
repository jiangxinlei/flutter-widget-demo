import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetWidget extends StatefulWidget {
  @override
  _CupertinoActionSheetWidgetState createState() => _CupertinoActionSheetWidgetState();
}

class _CupertinoActionSheetWidgetState extends State<CupertinoActionSheetWidget> {
  bool _cupertino = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoActionSheet'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('open CupertineActionSheet'),
          onPressed: () {
            showCupertinoModalPopup<void>(
              context: context, 
              // useRootNavigator: false,
              builder: (BuildContext context) {
                return CupertinoActionSheet(
                  title: Text('Favorite Dessert'),
                  message: Text('Please select the best dessert from the actions below'),
                  actions: <Widget>[
                    CupertinoActionSheetAction(
                      onPressed: () {
                        print('Profiteroles');
                      }, 
                      child: Text('Profiteroles')
                    ),
                    CupertinoActionSheetAction(
                      onPressed: () {
                        print('Cannolis');
                      }, 
                      child: Text('Cannolis')
                    ),
                    CupertinoActionSheetAction(
                      onPressed: () {
                        print('Trifie');
                      }, 
                      child: Text('Trifie')
                    ),
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    isDefaultAction: true,
                    onPressed: () {
                      Navigator.of(context).pop();
                    }, 
                    child: Text('cancel')),
                );
              }
            );
          }
        )
      ),
    );
  }
}