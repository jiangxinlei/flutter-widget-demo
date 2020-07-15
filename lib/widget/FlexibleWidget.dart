/**
 * Flexible 是相对其父级来说，父级占一定的空间，作为子元素的 Flexible 会等分其父级的空间
 */

import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 200,
            child: Column(
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 300,
            child: Column(
              children: <Widget>[
                Flexible(
                  flex: 3,
                  child: Container(
                    color: Colors.red,
                  ),
                ),

                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}