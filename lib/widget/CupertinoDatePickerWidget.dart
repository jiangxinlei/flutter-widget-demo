import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDatePickerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoDatePicker'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.dateAndTime,
                onDateTimeChanged: (dateTime) {
                  print(dateTime);
                },
              ),
            ),

            SizedBox(height: 20),

            Container(
              height: 300,
              child: CupertinoTimerPicker(
                mode: CupertinoTimerPickerMode.hms,
                onTimerDurationChanged: (dateTime) {
                  print(dateTime);
                },
              ),
            ),
          ],
        )
      ),
    );
  }
}