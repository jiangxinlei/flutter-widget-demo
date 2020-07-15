import 'package:flutter/material.dart';

class ClipRectWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipRect'),
      ),
      body: Center(
        child: ClipRect(
          child: Image.network(
              'https://images.unsplash.com/photo-1565898835704-3d6be4a2c98c?fit=crop&w=200&q=60', 
              fit: BoxFit.cover,
            ),
        ),
      ),
    );
  }
}