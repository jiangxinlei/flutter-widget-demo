import 'package:flutter/material.dart';

class TimePickerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TimePicker'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            showTimePicker(
              context: context, 
              initialTime: TimeOfDay.now(),
            );
          },
          child: Text('打开 TimePicker'),
        ),
      ),
    );
  }
}