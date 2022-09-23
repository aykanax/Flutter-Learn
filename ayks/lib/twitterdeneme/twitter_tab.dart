import 'package:ayks/101/image_learn.dart';
import 'package:ayks/twitterdeneme/TwitterDrawerHeader.dart';
import 'package:ayks/twitterdeneme/twitter_actionbutton.dart';
import 'package:ayks/twitterdeneme/twitter_deneme.dart';
import 'package:ayks/twitterdeneme/twitter_home.dart';
import 'package:ayks/twitterdeneme/twitter_home_page.dart';
import 'package:ayks/twitterdeneme/twitter_notifications.dart';
import 'package:ayks/twitterdeneme/twittter_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TwitterTabView extends StatefulWidget {
  const TwitterTabView({Key? key}) : super(key: key);

  @override
  State<TwitterTabView> createState() => _TwitterTabViewState();
}

class _TwitterTabViewState extends State<TwitterTabView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.create_rounded),
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(canvasColor: Colors.blueGrey[800]),
            child: BottomAppBar(
              color: Colors.blueGrey[800],
              child: TabBar(
                  indicatorColor: Colors.blueAccent,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.home_rounded),
                    ),
                    Tab(
                      icon: Icon(Icons.search),
                    ),
                    Tab(
                      icon: Icon(Icons.notifications),
                    ),
                    Tab(
                      icon: Icon(Icons.mail),
                    )
                  ]),
            ),
          ),
          appBar: AppBar(
            title: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Twitter-logo.svg/2491px-Twitter-logo.svg.png',
              height: 32,
              fit: BoxFit.cover,
            ),
            leading: Builder(
              builder: (BuildContext context) {
                return GestureDetector(
                  onTap: () => Scaffold.of(context).openDrawer(),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(200)),
                        child: Image.asset('assets/vector.png')),
                  ),
                );
              },
            ),
            backgroundColor: Colors.blueGrey[800],
            elevation: 100,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            automaticallyImplyLeading: false,
            centerTitle: true,
            actions: <Widget>[
              Icon(
                Icons.auto_awesome,
                color: Colors.white,
              )
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                TwitterDrawerHeader(
                    image: 'assets/vector.png',
                    account: '@aykanax',
                    followers: 110,
                    following: 110,
                    name: 'Ayks'),
                Divider(),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              TwitterHomePageView(),
              TwitterHome(),
              TwitterBildirim(),
              TwitterMessage()
            ],
          ),
        ));
  }
}
