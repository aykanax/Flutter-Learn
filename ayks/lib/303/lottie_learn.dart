import 'package:ayks/product/constant/lottie_items.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieLearnView extends StatefulWidget {
  const LottieLearnView({Key? key}) : super(key: key);

  @override
  State<LottieLearnView> createState() => _LottieLearnViewState();
}

class _LottieLearnViewState extends State<LottieLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Lottie.network(
            'https://assets3.lottiefiles.com/packages/lf20_tbyegho2.json'),
      ),
      body: Center(
        child: Lottie.network(
            'https://assets3.lottiefiles.com/packages/lf20_pa2kzq5x.json'),
      ),
    );
  }
}
