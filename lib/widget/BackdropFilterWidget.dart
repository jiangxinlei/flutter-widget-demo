import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropFilterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BackdropFilter'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Text('0' * 2000),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 5,
                  sigmaY: 5
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 200,
                  child: Text('书月秋亭'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}