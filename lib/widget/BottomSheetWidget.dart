import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomSheet'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            showModalBottomSheet<void>(context: context, builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.all(32),
                child: Text(
                  'this. is the modal bottom sheet, slide down to dismiss',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Theme.of(context).accentColor
                  ),
                ),

              );
            });
          },
          child: const Text('show bottom sheet'),
        ),
      ),
    );
  }
}