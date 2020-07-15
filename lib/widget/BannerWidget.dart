import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Banner'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          color: Colors.yellow,
          height: 100,
          child: ClipRect(
            child: Banner(
              message: 'Github', 
              location: BannerLocation.topEnd,
              color: Colors.red,
              child: Container(
                color: Colors.yellow,
                height: 100,
                child: Center(
                  child: Text('hello world!'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}