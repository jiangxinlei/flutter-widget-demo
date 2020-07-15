import 'package:flutter/material.dart';

class RadioWidget extends StatefulWidget {
  @override
  _RadioWidgetState createState() => _RadioWidgetState();
}

enum SingingCharacter { apple, banana }

enum SingingName { jack, smith }

class _RadioWidgetState extends State<RadioWidget> {
  SingingCharacter _character = SingingCharacter.apple;
  SingingName _name = SingingName.jack;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('苹果'),
              leading: Radio(
                value: SingingCharacter.apple, 
                groupValue: _character, 
                onChanged: (SingingCharacter val) {
                  setState(() {
                    _character = val;
                  });
                }
              ),
            ),

            ListTile(
              title: Text('香蕉'),
              leading: Radio(
                value: SingingCharacter.banana, 
                groupValue: _character, 
                onChanged: (SingingCharacter val) {
                  setState(() {
                    _character = val;
                  });
                }
              ),
            ),

            RadioListTile<SingingName>(
              title: Text('jack'),
              value: SingingName.jack, 
              groupValue: _name, 
              onChanged: (SingingName val) {
                setState(() {
                  _name = val;
                });
              }
            ),

            RadioListTile<SingingName>(
              title: Text('smith'),
              value: SingingName.smith, 
              groupValue: _name, 
              onChanged: (SingingName val) {
                setState(() {
                  _name = val;
                });
              }
            ),
          ],
        ),
      ),
    );
  }
}