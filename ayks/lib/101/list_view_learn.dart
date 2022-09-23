import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Text(
            'Selam',
            style: Theme.of(context).textTheme.headline5,
            maxLines: 6,
          ),
          Container(
            color: Colors.blueGrey,
            height: 300,
          ),
          const Divider(), // ara çizgi
          Container(
            color: Colors.blueAccent,
            height: 300,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.read_more_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.heart_broken_rounded))
        ],
      ),
    );
  }
}
