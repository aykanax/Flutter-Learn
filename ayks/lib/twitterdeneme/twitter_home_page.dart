import 'package:flutter/material.dart';

class TwitterHomePageView extends StatefulWidget {
  const TwitterHomePageView({Key? key}) : super(key: key);

  @override
  State<TwitterHomePageView> createState() => _TwitterHomePageViewState();
}

class _TwitterHomePageViewState extends State<TwitterHomePageView> {
  Widget post() {
    return Column(
      children: [
        ListTile(
          tileColor: Colors.blueGrey[800],
          leading: CircleAvatar(
            child: Image.asset('assets/aripp.png'),
            radius: 20,
            backgroundColor: Colors.transparent,
          ),
          title: Column(
            children: [
              Row(
                children: [
                  Text(
                    'GlueyHoneyPot',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Icon(
                    Icons.check_circle,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '@GlueyHoneypot',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.circle,
                    size: 2,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '19 saa',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Spacer(),
                  Icon(Icons.more_horiz)
                ],
              ),
              Text(
                'I have been interested in IT security for about a year now. whe I came home from work today,this book arrived and I was as happy as a little kid.Thanks with a hug to @davidbombal & @there_cube for your informative,interesting & inspiring videos.Greetings from Switzerland',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                  height: 470,
                  child: ClipRect(
                      child: Image.asset(
                    'assets/twitter_home.png',
                  )))
            ],
          ),
          subtitle: Row(
            children: [
              Icon(
                Icons.comment,
                color: Colors.grey,
              ),
              Text(
                '66',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                width: 40,
              ),
              Icon(
                Icons.compare_arrows,
                color: Colors.grey,
              ),
              Text('446', style: TextStyle(color: Colors.grey)),
              SizedBox(
                width: 40,
              ),
              Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              Text(
                '3.711',
                style: TextStyle(color: Colors.red),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.share)
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          post(),
          Divider(
            color: Colors.grey,
          )
        ],
      )),
      backgroundColor: Colors.blueGrey[800],
    );
  }
}
