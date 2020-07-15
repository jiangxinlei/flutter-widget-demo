import 'package:flutter/material.dart';

class ClipOvalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipOval'),
      ),
      body: Center(
        child: ClipOval(
          child: SizedBox(
            width: 120,
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