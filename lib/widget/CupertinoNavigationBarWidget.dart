import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoNavigationBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoNavigationBar'),
      ),
      body: CupertinoNavigationBar(
        leading: CupertinoNavigationBarBackButton(
          previousPageTitle: 'Home',
          onPressed: () {
            
          },
        ),
        middle: const Text('CupertinoNavigationBar sample'),
      ),
    );
  }
}