import 'package:flutter/material.dart';

class SliverAppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SliverAppBar title'),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.add_circle), 
                onPressed: () {},
                tooltip: 'add new entry',
              )
            ],
          ),

          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Container(
                  height: 1200,
                  color: Colors.teal,
                )
              ]
            )
          )
        ],
      ),
    );
  }
}