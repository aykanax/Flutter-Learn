import 'package:ayks/twitterdeneme/twitter_deneme.dart';
import 'package:flutter/material.dart';

class TwitterHome extends StatelessWidget {
  const TwitterHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          SizedBox(
            child: Image.asset('assets/searchimage.jpg'),
          ),
          _twittercard(context),
          _twittercard(context),
          _twittercard(context),
          _twittercard(context),
        ]),
      ),
      backgroundColor: Colors.blueGrey[800],
    );
  }

  Card _twittercard(BuildContext context) {
    return Card(
      color: Colors.blueGrey[800],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Column(
            children: [
              Text(
                'Spor - Gündemler',
                style: TextStyle(color: Colors.white60),
              ),
              Text(
                'Mertens',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          onTap: () {},
          subtitle: Text(
            '2.067 Tweet',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          minVerticalPadding: 0,
          dense: true,
          leading: Container(
            height: 200,
            width: 30,
            alignment: Alignment.bottomLeft,
          ),
          trailing: const SizedBox(width: 20, child: Icon(Icons.more_vert)),
        ),
      ),
    );
  }
}
