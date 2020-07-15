import 'package:flutter/material.dart';

class ExpansionPanelListWidget extends StatefulWidget {
  @override
  _ExpansionPanelListWidgetState createState() => _ExpansionPanelListWidgetState();
}

class _ExpansionPanelListWidgetState extends State<ExpansionPanelListWidget> {

  // 这里要是 static
  static List<Item> generateItems(int numberOfItems) {
    return List.generate(numberOfItems, (int index) {
      return Item(
        expandedValue: 'this is item number $index',
        headerValue: 'panel $index'
      );
    });
  } 

  List<Item> _data = generateItems(8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanelList'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: _buildPanel(),
        ),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          }, 
          body: ListTile(
            title: Text(item.expandedValue),
            subtitle: Text('To delete this panel, tab the trash can icon'),
            trailing: Icon(Icons.delete),
            onTap: () {
              setState(() {
                _data.removeWhere((currentItem) => item == currentItem);
              });
            },
          ),
          isExpanded: item.isExpanded
        );
      }).toList(),
    );
  }
}

class Item {
  String expandedValue;
  String headerValue;
  bool isExpanded;

  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });
}