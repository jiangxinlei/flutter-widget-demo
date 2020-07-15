/**
 * SizedBox 具有特定大小，其子级页具有该大小
 */
import 'package:flutter/material.dart';

class SizedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedBox'),
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          height: 300,
          child: Card(
            child: Text('hello world'),
          ),
        ),
      ),
    );
  }
}