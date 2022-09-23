import 'package:flutter/material.dart';

class TwitterSearh extends StatefulWidget {
  const TwitterSearh({Key? key}) : super(key: key);

  @override
  State<TwitterSearh> createState() => _TwitterSearhState();
}

class _TwitterSearhState extends State<TwitterSearh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tümü'),
      ),
    );
  }
}
