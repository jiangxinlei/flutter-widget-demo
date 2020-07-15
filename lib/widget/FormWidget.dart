import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                validator: (val) {
                  if (val.isEmpty) {
                    return 'please enter some text';
                  }
                  return null;
                },
              ),

              SizedBox(height: 20),

              RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    print(_formKey.currentState.toString());
                  }
                },
                child: Text(
                  'submit'
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}