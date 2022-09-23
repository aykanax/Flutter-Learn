import 'package:flutter/material.dart';

class ColumnRowView extends StatelessWidget {
  const ColumnRowView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // 4+2+2+2
          Expanded(
              flex: 4, //%40
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.amber)),
                  Expanded(child: Container(color: Colors.cyan)),
                  Expanded(child: Container(color: Colors.lightGreen)),
                  Expanded(child: Container(color: Colors.pink)),
                ],
              )),
          const Spacer(flex: 2),
          Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('1'),
                  Text('2'),
                  Text('3'),
                ],
              )),
          SizedBox(
            height: ProjectContainerSizes.cardHeight,
            child: Column(
              children: const [
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Spacer(),
                Expanded(child: Text('data')),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProjectContainerSizes {
  static const double cardHeight = 200;
}
