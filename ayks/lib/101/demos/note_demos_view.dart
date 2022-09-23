import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoteDemosViewLearn extends StatelessWidget {
  const NoteDemosViewLearn({Key? key}) : super(key: key);
  final title = ('Ayks');
  final _altsatir =
      ('İmage ile ilgili öğrediklerimle yukarıdaki logoyu ekledim,Text kodları ile yukarıdaki Ayks yazısını daha büyük yaptım.Bu yazının style ını farklı yaptım ve hepsini classlar ile sınıflandırdım');
  final _textbutton = ('Text Button');
  final _elevatedbutton = ('Elevated button');
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            SizedBox(
              child: Image.network(
                  'https://cdn.freebiesupply.com/logos/large/2x/as-logo-png-transparent.png'),
              width: size.width * 0.5,
              height: size.height * 0.5,
            ),
            _TitleWidget(title: title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: Text(
                _altsatir,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: Colors.black54, fontWeight: FontWeight.w400),
              ),
            ),
            const Spacer(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue[300],
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                onPressed: () {},
                child: SizedBox(
                    height: ButtonHeight.buttonNormalHeight,
                    child: Center(
                        child: Text(
                      _elevatedbutton,
                      style: Theme.of(context).textTheme.headline5,
                    )))),
            TextButton(
                style: TextButton.styleFrom(primary: Colors.blue[200]),
                onPressed: () {},
                child: Text(_textbutton)),
            Container(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800));
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 10);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ButtonHeight {
  static const double buttonNormalHeight = 50;
}
