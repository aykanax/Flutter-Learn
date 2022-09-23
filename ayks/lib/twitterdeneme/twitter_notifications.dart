import 'package:flutter/material.dart';

class TwitterBildirim extends StatefulWidget {
  const TwitterBildirim({Key? key}) : super(key: key);
  final String _tumu = 'Tümü';

  @override
  State<TwitterBildirim> createState() => _TwitterBildirimState();
}

class _TwitterBildirimState extends State<TwitterBildirim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('     Tümü             Bahsedenler'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          _bildirimcard(context),
          _bildirimcard(context),
          _bildirimcard(context),
          _bildirimcard(context),
          _bildirimcard(context),
          _bildirimcard(context),
        ]),
      ),
      backgroundColor: Colors.blueGrey[800],
    );
  }

  Card _bildirimcard(BuildContext context) {
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
                Icons.heart_broken,
                color: Colors.red,
                size: 35,
              )),
          trailing:
              const SizedBox(width: 20, child: Icon(Icons.more_vert_outlined)),
        ),
      ),
    );
  }
}
