import 'package:flutter/material.dart';

class ClipRRectWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipRRect'),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: SizedBox(
            width: 100,
            height: 100,
            child: Image.network(
              'https://images.unsplash.com/photo-1565898835704-3d6be4a2c98c?fit=crop&w=200&q=60', 
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}