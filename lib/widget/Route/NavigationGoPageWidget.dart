import 'package:flutter/material.dart';

class NavigationGoPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NavigationGoPage'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {

            // Navigator.push 跳转到新的路由
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => SecondPage()
              )
            );
          },
          child: Text('open route'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondPage'),
      ),
      body: RaisedButton(
        onPressed: () {

          // Navigator.pop 回退到第一个路由
          Navigator.pop(context);
        },
        child: Text('Go back!'),
      ),
    );
  }
}