import 'package:flutter/material.dart';

class AnimatedPhysicalModelWidget extends StatefulWidget {
  @override
  _AnimatedPhysicalModelWidgetState createState() => _AnimatedPhysicalModelWidgetState();
}

class _AnimatedPhysicalModelWidgetState extends State<AnimatedPhysicalModelWidget> {
  bool _model = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPhysicalModel'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedPhysicalModel(
              child: Container(
                height: 120,
                width: 120,
                color: Colors.blue[50],
                child: FlutterLogo(
                  size: 60,
                ),
              ), 
              shape: BoxShape.rectangle, 
              elevation: _model ? 0 : 6.0, 
              color: Colors.white, 
              shadowColor: Colors.black, 
              duration: const Duration(milliseconds: 500),
              borderRadius: _model ?
                const BorderRadius.all(Radius.circular(0)) :
                const BorderRadius.all(Radius.circular(10)),
            ),

            SizedBox(height: 20),

            RaisedButton(
              color: Colors.greenAccent,
              onPressed: () {
                setState(() {
                  _model = !_model;
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
      )
    );
  }
}