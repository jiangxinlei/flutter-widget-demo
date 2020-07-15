import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  final List<String> _tabs = ['one', 'two', 'three'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length, 
      child: Scaffold(
        appBar: AppBar(
          title: TabBar(
            tabs: _tabs.map((String name) => Tab(
              text: name,
            )).toList()
          ),
          // bottom: TabBar(
          //   tabs: _tabs.map((String name) => Tab(
          //     text: name,
          //   )).toList()
          // ),
          actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search), 
            onPressed: () => 
              showSearch(
                context: context, 
                delegate: SearchBarDelegate()
              )
          )
        ],
        ),
        drawer: Drawer(
        semanticLabel: 'jxl',
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey
              ),
              child: Center(
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: CircleAvatar(
                    child: FlutterLogo(),
                  ),
                ),
              )
            ),

            ListTile(
              leading: Icon(Icons.track_changes),
              title: Text('change history'),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
        body: TabBarView(
          children: _tabs.map((String name) {
            return SafeArea(
              top: false,
              bottom: false,
              child: Builder(
                builder: (BuildContext context) {
                  return Center(
                    child: Text('page $name'),
                  );
                }
              ),
            );
          }).toList(),
        )
      )
    );
  }
}

const searchList = [
  "ChengDu",
  "ShangHai",
  "BeiJing",
  "TianJing",
  "NanJing",
  "ShenZheng"
];

const recentSuggest = [
  "suggest1",
  "suggest2"
];

class SearchBarDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear), 
        onPressed: () => query = "")
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow, 
        progress: transitionAnimation
      ),
      onPressed: () => close(context, null)
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Container(
        width: 100.0,
        height: 100.0,
        child: Card(
          color: Colors.redAccent,
          child: Center(
            child: Text(query),
          ),
        ),
      )
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentSuggest
        : searchList.where((input) => input.startsWith(query)).toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) => 
        ListTile(
          onTap: () {
            query = suggestionList[index];
            showResults(context);
          },
          title: RichText(
            text: TextSpan(
              text: suggestionList[index].substring(0, query.length),
              style: TextStyle(
                color: Colors.black, 
                fontWeight: FontWeight.bold
              ),
              children: [
                TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(color: Colors.grey))
              ]
            ),
          ),
        )
    );
  }
}