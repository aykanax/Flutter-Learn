import 'package:ayks/core/randomimage.dart';
import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);
  final imageUrl =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7nozNOrfOnw9EWU5u-JpXeqjzVFY0iVf8aQ&usqp=CAU';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: const RandomImage(),
                onTap: () {},
                subtitle: const Text('Kayıtlı kartlarınız'),
                minVerticalPadding: 0,
                dense: true,
                leading: Container(
                    height: 200,
                    width: 30,
                    alignment: Alignment.topCenter,
                    child: const Icon(Icons.contact_phone_rounded)),
                trailing:
                    const SizedBox(width: 20, child: Icon(Icons.chevron_right)),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
