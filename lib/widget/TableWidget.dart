import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table'),
      ),
      body: Center(
        child: Table(
          children: <TableRow>[
            TableRow(
              children: <Widget>[
                Text('AAAAAA'),
                Text('BBBBBB'),
                Text('CCCCCC'),
              ]
            ),
            TableRow(
              children: <Widget>[
                Text('DDDDDD'),
                Text('FFFFFF'),
                Text('GGGGGG'),
              ]
            ),
            TableRow(
              children: <Widget>[
                Text('HHHHHH'),
                Text('IIIIII'),
                Text('JJJJJJ'),
              ]
            )
          ],
        ),
      ),
    );
  }
}