import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: Center(
        child: Image.network('https://images.unsplash.com/photo-1565898835704-3d6be4a2c98c?fit=crop&w=200&q=60'),
      ),
    );
  }
}