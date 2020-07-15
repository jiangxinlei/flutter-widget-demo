/**
 * CupertinoActivityIndicator - 菊花 loading
 */
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class CupertinoActivityIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoActivityIndicator'),
      ),
      body: Center(
        child: CupertinoActivityIndicator(),
      ),
    );
  }
}