import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearn extends StatelessWidget {
  const AppBarLearn({Key? key}) : super(key: key);
  final String _title = 'Anasayfa';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title), //yazı
        leading: const Icon(Icons.chevron_left_sharp), //sol kısıma buton
        centerTitle: true, //ortalama
        backgroundColor: Colors.transparent, // appbar'ı transparan yapıyor
        elevation: 0, //transpart miktarı
        systemOverlayStyle: SystemUiOverlayStyle
            .light, //üst kısımda blulunan wifi benzeri işaretlerin renkleri
        automaticallyImplyLeading:
            false, //flutter back tuşunu otomatik veriyor kapatmak için
        actionsIconTheme:
            const IconThemeData(color: Colors.grey, size: 35), // ıcon teması
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.account_circle)),
          const Center(child: CircularProgressIndicator())
        ],
      ),
      body: Column(children: const []),
      backgroundColor: Colors.blueGrey,
    );
  }
}
