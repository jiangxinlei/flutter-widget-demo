import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  @override
  _BottomNavigationBarWidgetState createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _curIndex = 0;

  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold
  );

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'index 0 : Home',
      style: optionStyle
    ),
    Text(
      'index 1 : Business',
      style: optionStyle
    ),
    Text(
      'index 2 : School',
      style: optionStyle
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_curIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School')
          ),
        ],
        currentIndex: _curIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (int index) {
          setState(() {
            _curIndex = index;
          });
        },
      ),
    );
  }
}
