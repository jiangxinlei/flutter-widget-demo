import 'package:flutter/material.dart';

class DatePickerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DatePicker'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('show DataPicker'),
          onPressed: () {
            showDatePicker(
              context: context, 
              initialDate: DateTime.now(), 
              firstDate: DateTime(2018), 
              lastDate: DateTime(2030),
              builder: (BuildContext context, Widget child) {
                return Theme(
                  data: ThemeData.dark(), 
                  child: child
                );
              },
            );
          }
        ),
      ),
    );
  }
}