import 'package:flutter/material.dart';

class NavigationPageDataWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NavigationPageData'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('go SelectedPage'),
          onPressed: () async {
            final result = await Navigator.push(context, MaterialPageRoute(
              builder: (context) => SelectedPage()
            ));

            print(result);
          }
        ),
      ),
    );
  }
}

class SelectedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SelectedPage'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                // 关闭当前页面，返回 'hello' 数据
                Navigator.pop(context, 'hello');
              },
              child: Text('send hello'),
            ),

            SizedBox(height: 20),

            RaisedButton(
              onPressed: () {
                // 关闭当前页面，返回 'hello' 数据
                Navigator.pop(context, 'world');
              },
              child: Text('send world'),
            ),
          ],
        ),
      ),
    );
  }
}