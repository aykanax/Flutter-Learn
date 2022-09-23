import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            child: Text('a', style: Theme.of(context).textTheme.overline),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.black)),
            onPressed: () {},
          ),
          const ElevatedButton(onPressed: null, child: Text('Kaydet')),
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc_sharp)),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          OutlinedButton(onPressed: () {}, child: const Text('Ayks')),
          InkWell(
            onTap: () {},
            child: const Text('Aykan'),
          ),
          Container(
            height: 200,
            color: Colors.pinkAccent,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, right: 40, left: 40),
                child: Text(
                  'Place Bid',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ))
        ],
      ),
    );
  }
}
