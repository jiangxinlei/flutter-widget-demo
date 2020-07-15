import 'package:flutter/material.dart';

class AnimatedHeroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedHero'),
      ),
      body: Center(
        child: GestureDetector(
          child: Hero(
            tag: 'imageHero', 
            child: Image.network(
              'https://picsum.photos/250?image=9',
            )
          ),
          onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (_) {
                  return DetailPage();
                }
              )
            );
          },
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hero')
      ),
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image.network(
              'https://picsum.photos/250?image=9',
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}