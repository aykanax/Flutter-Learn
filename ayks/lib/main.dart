import 'package:ayks/101/demos/color_demos_view.dart';
import 'package:ayks/101/demos/my_collections_demos.dart';
import 'package:ayks/101/list_view_builder.dart';
import 'package:ayks/101/list_view_learn.dart';
import 'package:ayks/101/nagivate_detail_learn.dart';
import 'package:ayks/101/nagivation_learn.dart';

import 'package:ayks/101/statefull_life_cycle_learn.dart';
import 'package:ayks/101/icon_learn.dart';
import 'package:ayks/101/app_bar_learn.dart';
import 'package:ayks/101/button_learn.dart';
import 'package:ayks/101/card_learn.dart';
import 'package:ayks/101/column_row_learn.dart';
import 'package:ayks/101/container_sized-box-learn.dart';
import 'package:ayks/101/custom_widget_learn.dart';
import 'package:ayks/101/image_learn.dart';
import 'package:ayks/101/indicator_learn.dart';
import 'package:ayks/101/list_tile_learn.dart';
import 'package:ayks/101/padding_learn.dart';
import 'package:ayks/101/page_view_learn.dart';
import 'package:ayks/101/scaffold_learn.dart';
import 'package:ayks/101/stack_learn.dart';
import 'package:ayks/101/statefull_learn.dart';
import 'package:ayks/101/text_field_learn.dart';
import 'package:ayks/101/text_learn-view.dart';
import 'package:ayks/202/alert_learn.dart';
import 'package:ayks/202/animated_learn_wiev.dart';
import 'package:ayks/202/cache/secure/shared_context_learn.dart';
import 'package:ayks/202/cache/shared_learn_cache.dart';
import 'package:ayks/202/form_learn_view.dart';
import 'package:ayks/202/image_learn_202.dart';
import 'package:ayks/202/package_learn_view.dart';
import 'package:ayks/202/sheet_learn.dart';
import 'package:ayks/303/lottie_learn.dart';
import 'package:ayks/303/reqrest_resource/view/reqres_view.dart';
import 'package:ayks/product/global/resource_context.dart';
import 'package:ayks/product/global/theme_notifier.dart';
import 'package:ayks/service/service_learn_view.dart';
import 'package:ayks/theme/light_theme.dart';
import 'package:ayks/theme/theme_learn_view.dart';
import 'package:ayks/twitterdeneme/twitter_actionbutton.dart';

import 'package:ayks/twitterdeneme/twitter_deneme.dart';
import 'package:ayks/101/demos/note_demos_view.dart';
import 'package:ayks/202/tab_learn.dart';
import 'package:ayks/twitterdeneme/twitter_home.dart';
import 'package:ayks/twitterdeneme/twitter_home_page.dart';
import 'package:ayks/twitterdeneme/twitter_tab.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider(create: (_) => ResourceContext()),
      ChangeNotifierProvider<ThemeNotifer>(
        create: (context) => ThemeNotifer(),
      )
    ],
    builder: (context, child) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: context.watch<ThemeNotifer>().currentTheme,

      //LighTheme().theme,

      // ThemeData.dark().copyWith(
      // progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.amber),
      // appBarTheme: const AppBarTheme(
      //  centerTitle: true,
      //backgroundColor: Colors.transparent, // appbar'ı transparan yapıyor
      //elevation: 0, //transpart miktarı
      //actionsIconTheme:
      //  const IconThemeData(color: Colors.grey, size: 35), // ıcon teması
      //),
      //bottomAppBarTheme:
      //  const BottomAppBarTheme(shape: CircularNotchedRectangle()),
      //backgroundColor: Colors.blueGrey[800],
      //listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
      //cardTheme: CardTheme(
      //  shape: RoundedRectangleBorder(
      //    borderRadius: BorderRadius.circular(20))),
      //textSelectionTheme: const TextSelectionThemeData(
      //  selectionColor: Colors.red,
      //cursorColor: Colors.green,
      //selectionHandleColor: Colors.black),
      //inputDecorationTheme: const InputDecorationTheme(
      //  filled: true,
      //fillColor: Colors.white,
      //iconColor: Colors.red,
      //labelStyle: TextStyle(color: Colors.black),
      //border: OutlineInputBorder(),
      //floatingLabelStyle: TextStyle(
      //  color: Colors.red, fontSize: 24, fontWeight: FontWeight.w600)),
      //textTheme: const TextTheme(subtitle1: TextStyle(color: Colors.black)),
      //),
      home: LottieLearnView(),
    );
  }
}
