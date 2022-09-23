import 'package:ayks/101/icon_learn.dart';
import 'package:ayks/twitterdeneme/twitter_deneme.dart';
import 'package:flutter/material.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({Key? key}) : super(key: key);

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabViews.values.length,
        child: Scaffold(
          extendBody: true,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _tabController.animateTo(0);
            },
          ),
          bottomNavigationBar: const BottomAppBar(
            notchMargin: 10,
            child:
                TabBar(indicatorColor: Colors.amber, isScrollable: true, tabs: [
              Tab(
                icon: Icon(Icons.home_filled),
              ),
              Tab(
                icon: Icon(Icons.search),
              )
            ]),
          ),
          appBar: AppBar(
              bottom: TabBar(
                  indicatorColor: Colors.amber,
                  controller: _tabController,
                  tabs: _MyTabViews.values
                      // ignore: prefer_const_constructors
                      .map((e) => Tab(
                            text: '{name}',
                          ))
                      .toList())),
          body: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              children: [const Twitter_Deneme(), IconLearnView()]),
        ));
  }
}

enum _MyTabViews { home, search, noti, message }

extension _MyTabViewExtension on _MyTabViews {}
