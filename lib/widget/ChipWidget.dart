import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chip'),
      ),
      body: Center(
        child: Chip(
          autofocus: false,
          focusNode: FocusNode(
            debugLabel: 'jxl'
          ),
          label: Text('github'),
          avatar: CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            child: Text('git'),
          ),
          onDeleted: () {

          },
        ),
      ),
    );
  }
}