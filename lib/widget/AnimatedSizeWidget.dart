import 'package:flutter/material.dart';

class AnimatedSizeWidget extends StatefulWidget {
  @override
  _AnimatedSizeWidgetState createState() => _AnimatedSizeWidgetState();
}

// 这里一定要添加 with TickerProviderStateMixin
class _AnimatedSizeWidgetState extends State<AnimatedSizeWidget> with TickerProviderStateMixin {

  bool _size = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedSize'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              child: Center(
                child: AnimatedSize(
                  duration: const Duration(
                    milliseconds: 500
                  ),
                  curve: Curves.fastOutSlowIn,
                  child: Container(
                    color: Colors.blue,
                    width: _size ? 220 : 200,
                    height: _size ? 160 : 200,
                  ), 
                  vsync: this, 
                ),
              )
            ),

            SizedBox(height: 20),

            RaisedButton(
              color: Colors.greenAccent,
              onPressed: () {
                setState(() {
                  _size = !_size;
                });
              },
              child: const Text(
                'click',
                style: TextStyle(
                  color: Colors.red
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}