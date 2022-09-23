import 'package:flutter/material.dart';

class TwitterMessage extends StatefulWidget {
  const TwitterMessage({Key? key}) : super(key: key);

  @override
  State<TwitterMessage> createState() => _TwitterMessageState();
}

class _TwitterMessageState extends State<TwitterMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _messageCard(context),
          _messageCard(context),
          _messageCard(context),
          _messageCard(context),
          _messageCard(context),
          _messageCard(context),
          _messageCard(context),
        ],
      ),
    );
  }

  Card _messageCard(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          onTap: () {},
          title: Text(
            'Aykanax twitini beğendi',
            style: Theme.of(context).textTheme.headline5,
          ),
          subtitle: Text(
            'Say nasip and keep going',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          minVerticalPadding: 0,
          dense: true,
          leading: Container(
              height: 200,
              width: 30,
              alignment: Alignment.topCenter,
              child: const Icon(
                Icons.person,
                color: Colors.white,
                size: 35,
              )),
          trailing:
              const SizedBox(width: 20, child: Icon(Icons.more_vert_outlined)),
        ),
      ),
    );
  }
}
