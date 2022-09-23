import 'package:ayks/twitterdeneme/DrawerItem.dart';
import 'package:ayks/twitterdeneme/TwitterDrawerHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TwttterDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          TwitterDrawerHeader(
              image: 'assets/vector.png',
              account: '@aykanax',
              followers: 110,
              following: 110,
              name: 'Ayks'),
          Divider(),
          DrawerItem(
            icon: 'assets/icons/profile.svg',
            label: 'Profile',
          )
        ],
      ),
    );
  }
}
