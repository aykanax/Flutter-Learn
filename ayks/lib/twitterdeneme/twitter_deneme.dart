import 'package:ayks/101/container_sized-box-learn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Twitter_Deneme extends StatelessWidget {
  const Twitter_Deneme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // Cihazın kendi boyutlarını verir responsive tasarım için
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          SizedBox(
            child: Column(
              children: [
                Card(
                  child: Text(
                    'Teknoloji',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
                Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
                SizedBox(
                    width: size.width * 0.8,
                    height: size.height * 0.4,
                    child: Image(image: AssetImage('assets/twitter_home.png'))),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.blueGrey[800],
    );
    Divider(
      color: Colors.white,
    );
  }
}
