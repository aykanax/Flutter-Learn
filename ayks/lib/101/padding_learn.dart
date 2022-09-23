import 'package:flutter/material.dart';

class Padding_Learn extends StatelessWidget {
  const Padding_Learn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: Project_Padding.pagePaddingVertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.amberAccent,
                  height: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.amber,
                  height: 100,
                ),
              )
            ],
          ),
        ));
  }
}

class Project_Padding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
  static const pagePaddingRightOnly = EdgeInsets.only(right: 10);
}
