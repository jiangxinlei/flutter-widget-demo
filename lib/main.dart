import 'package:flutter/material.dart';
import 'package:flutter_weidget_demo/extends/routers.dart';
import 'package:flutter_weidget_demo/models/router.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter All Widget Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<RouterList> rLists = [];

  _MyHomePageState() {
    final pageLists = Router.Router_LISTS;

    for (var list in pageLists) {
      rLists.add(RouterList.fromMap(list));
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter All Widget Demo'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: _buildPanel(),
        ),
      ),
    );
  }

  double getHeight(int len, double h) {
    return h * len;
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          rLists[index].isExpanded = !isExpanded;
        });
      },
      children: rLists.map<ExpansionPanel>((rList) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(rList.headerTitle),
            );
          }, 
          body: Container(
            height: getHeight(rList.child.length, 30),
            child: ListView.builder(
              itemCount: rList.child.length,
              itemBuilder: (BuildContext context, int index) {
                return getPageChildList(index, rList);
              }
            ),
          ),
          isExpanded: rList.isExpanded
        );
      }).toList(),
    );
  }

  Widget getPageChildList(int index, RouterList rList) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: ListTile(
          title: Text(
            rList.child[index].title,
            style: TextStyle(color: Colors.grey),
          ),
          subtitle: Text(rList.child[index].subTitle)
        ),
      ),
      onTap: () {
        Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => rList.child[index].page));
      },
    );
  }
}