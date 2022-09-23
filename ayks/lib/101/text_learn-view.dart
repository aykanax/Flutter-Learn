import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key}) : super(key: key);

  final String name = 'Twitter';

  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(('Ayks $name ${name.length}' * 10),
            maxLines: 1, //maksimum satır
            overflow: TextOverflow.ellipsis, //yazının yanına ... ekliyor
            textAlign: TextAlign.right, //yazı sağ taraftan veriyor
            style: const TextStyle(
                wordSpacing: 2, //kelimelerin arasına boşluk
                decoration: TextDecoration.underline, //alt çizgi
                letterSpacing: 3, //harflerin arasına boşluk
                fontSize: 16, //fontbüyüklüğü

                fontWeight: FontWeight.w800, //font kalınlığı
                color: Colors.blueAccent) //renk,tema

            ),
        Text(
          'Ayks $name ${name.length}',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.right,
          style: ProjectStyles.welcomeStyle,
        ),
        Text(
          'Aykanax $name ${name.length}',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.right,
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color: ProjectColors.welcomeColor),
        ),
        Text(keys.welcome),
      ]),
    ));
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      wordSpacing: 2, //kelimelerin arasına boşluk
      decoration: TextDecoration.underline, //alt çizgi
      letterSpacing: 3, //harflerin arasına boşluk
      fontSize: 16, //fontbüyüklüğü

      fontWeight: FontWeight.w800, //font kalınlığı
      color: Colors.blueAccent); //renk,tema

}

class ProjectColors {
  static Color welcomeColor = Colors.blueGrey;
}

class ProjectKeys {
  final String welcome = "Selam dünya";
}
