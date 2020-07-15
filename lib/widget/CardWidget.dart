import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: Card(
        // color: Colors.red,
        elevation: 10.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable'),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  onPressed: () {}, 
                  child: Text('buy tickets')
                ),
                FlatButton(
                  onPressed: () {}, 
                  child: Text('listen')
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}