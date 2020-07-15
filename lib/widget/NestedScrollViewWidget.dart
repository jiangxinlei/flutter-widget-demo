import 'package:flutter/material.dart';

class NestedScrollViewWidget extends StatelessWidget {
  final List<String> _tabs = ['one', 'two', 'three'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('NestedScrollView'),
      // ),
      body: DefaultTabController(
        length: _tabs.length, 
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                child: SliverAppBar(
                  title: Text('NestedScrollView'),
                  pinned: true,
                  expandedHeight: 150,
                  forceElevated: innerBoxIsScrolled,
                  bottom: TabBar(
                    tabs: _tabs.map((String name) => Tab(text: name,)).toList()
                  ),
                ),
              )
            ];
          },
          body: TabBarView(
            children: _tabs.map((String name) {
              return SafeArea(
                top: false,
                bottom: false,
                child: Builder(
                  builder: (BuildContext context) {
                    return CustomScrollView(
                      key: PageStorageKey<String>(name),
                      slivers: <Widget>[
                        SliverOverlapInjector(
                          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context)
                        ),
                        SliverPadding(
                          padding: EdgeInsets.all(8),
                          sliver: SliverFixedExtentList(
                            delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                                return ListTile(
                                  title: Text('Item $index'),
                                );
                              },
                              childCount: 30
                            ), 
                            itemExtent: 48
                          ),
                        )
                      ],
                    );
                  }
                )
              );
            }).toList()
          ),
        )
      ),
    );
  }
}