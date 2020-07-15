import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('垂直滚动'),
            Container(
              height: 300,
              child: ListView(
                padding: EdgeInsets.all(8),
                children: List.generate(10, (index) {
                  return Container(
                    height: 50,
                    color: Colors.amber[index * 100],
                    child: Center(
                      child: Text('Item $index'),
                    ),
                  );
                })
              ),
            ),

            SizedBox(height: 50),


            Text('水平滚动'),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index) {
                  return Container(
                    height: 50,
                    color: Colors.amber[index * 100],
                    child: Container(
                      width: 100,
                      child: Text('item $index'),
                    ),
                  );
                })
              ),
            )
          ],
        ),
      ),
    );
  }
}