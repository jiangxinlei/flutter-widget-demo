import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            final snackbar = SnackBar(
              content: Text('a SnackBar'),
              action: SnackBarAction(
                label: 'undo', 
                onPressed: () {}
              ),
            );
            

            Scaffold.of(context).showSnackBar(snackbar);
          },
          child: Text('show SnackBar'),
        ),
      ),
    );
  }
}