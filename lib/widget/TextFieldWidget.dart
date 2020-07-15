import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField'),
      ),
      body: Center(
        child: TextField(
          obscureText: true,   // 加密
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password'
          ),
        ),
      ),
    );
  }
}