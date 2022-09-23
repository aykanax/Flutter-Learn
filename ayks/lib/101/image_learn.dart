import 'package:flutter/material.dart';

class ImageLaern extends StatelessWidget {
  const ImageLaern({Key? key}) : super(key: key);
  final String _imagePath =
      'https://cdn.freebiesupply.com/logos/large/2x/as-2-logo-png-transparent.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Image.asset(
          'assets/vector.png',
          errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.abc_outlined),
        ),
        //Image(image: AssetImage('assets/twitter_home.png'))
      ]),
    );
  }
}

class ImageItems {
  final String appleWithBook = "assets/vector.png";
  final String appleBook = "assets/vector.png";
}
