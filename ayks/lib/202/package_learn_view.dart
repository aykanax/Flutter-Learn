//import 'dart:html';

import 'package:ayks/202/package/loading_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://flutter.dev');

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({Key? key}) : super(key: key);

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _launchUrl('https://flutter.dev');
          },
        ),
        body: const LoadingBar());
  }
}

Future<void> _launchUrl(String url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
