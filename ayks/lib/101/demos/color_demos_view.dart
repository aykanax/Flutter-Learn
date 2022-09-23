import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({Key? key}) : super(key: key);

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor = Colors.transparent;
  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            if (value == _MyColors.red.index) {
              changeBackgroundColor(Colors.redAccent);
            } else if (value == _MyColors.blue.index) {
              changeBackgroundColor(Colors.blueAccent);
            } else if (value == _MyColors.yellow.index) {
              changeBackgroundColor(Colors.yellowAccent);
            }
          },
          items: const [
            BottomNavigationBarItem(
                icon: _ColorContainer(
                  color: Colors.red,
                ),
                label: 'Red'),
            BottomNavigationBarItem(
                icon: _ColorContainer(color: Colors.blueAccent), label: 'Blue'),
            BottomNavigationBarItem(
                icon: _ColorContainer(color: Colors.yellowAccent),
                label: 'Yellow'),
          ]),
    );
  }
}

enum _MyColors { red, yellow, blue }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({Key? key, required this.color}) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
