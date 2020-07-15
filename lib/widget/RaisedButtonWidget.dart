import 'package:flutter/material.dart';

class RaisedButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RaisedButton'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text(
                'disabled button',
                style: TextStyle(
                  fontSize: 24
                ),
              ),
              onPressed: null   // 设置为 null 就是 disabled
            ),

            SizedBox(height: 20),

            RaisedButton(
              child: Text(
                'enabled button',
                style: TextStyle(
                  fontSize: 24
                ),
              ),
              onPressed: () {}
            ),

            SizedBox(height: 20),

            RaisedButton(
              textColor: Colors.white,
              padding: EdgeInsets.all(0),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ]
                  )
                ),
                padding: EdgeInsets.all(10),
                child: Text(
                  'Gradient Button',
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
              ),
              onPressed: () {}
            )
          ],
        ),
      ),
    );
  }
}