import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  @override
  _DismissibleWidgetState createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  final items = List<String>.generate(3, (i) => 'item ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return Dismissible(
            key: Key(item), 
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });
              
              Scaffold.of(context)
                .showSnackBar(
                  SnackBar(content: Text('$item dismissed'))
                );
            },
            background: Container(
              color: Colors.red,
            ),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('$item'),
                ),
                Divider()
              ],
            )
          );
        }
      ),
    );
  }
}