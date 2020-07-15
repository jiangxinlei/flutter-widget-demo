import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  final String _userAvatarUrl = 'https://images.unsplash.com/photo-1565898835704-3d6be4a2c98c?fit=crop&w=200&q=60';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CircleAvatar'),
      ),
      body: Center(
        child: CircleAvatar(
          backgroundImage: NetworkImage(_userAvatarUrl),
        ),
      ),
    );
  }
}