import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPageScaffoldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoPageScaffold'),
      ),
      body: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoNavigationBarBackButton(
            previousPageTitle: 'Home',
            onPressed: () {},
          ),
          middle: const Text('Smaple'),
        ),
        child: Center(
          child: Text('hello'),
        ),
      ),
    );
  }
}