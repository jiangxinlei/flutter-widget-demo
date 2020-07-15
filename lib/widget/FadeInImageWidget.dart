import 'package:flutter/material.dart';

class FadeInImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FadeInImage'),
      ),
      body: Stack(
        children: <Widget>[
          // Center(
          //   child: CircularProgressIndicator()
          // ),
          Center(
            child: FadeInImage.assetNetwork(
                placeholder: 'assets/loading.gif',
                image: 'https://picsum.photos/250?image=9',
              ),
          )
        ],
      ),
    );
  }
}