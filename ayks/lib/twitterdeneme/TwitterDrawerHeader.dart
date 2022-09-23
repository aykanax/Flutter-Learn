import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TwitterDrawerHeader extends StatelessWidget {
  final String image;
  final String account;
  final int following;
  final int followers;
  final String name;

  const TwitterDrawerHeader(
      {super.key,
      required this.image,
      required this.account,
      required this.following,
      required this.followers,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(200)),
            child: Image.asset(
              image,
              width: 80,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(account),
                ),
                Icon(Icons.expand_more_outlined)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(following.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                ),
                Text('Following'),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(followers.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                ),
                Text('Followers')
              ],
            ),
          )
        ],
      ),
    );
  }
}
