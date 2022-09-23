import 'package:flutter/material.dart';

class IndicatorLearnView extends StatelessWidget {
  const IndicatorLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [CenterCircularProgress()],
      ),
      body: const Center(
        child: LinearProgressIndicator(),
      ),
    );
  }
}

class CenterCircularProgress extends StatelessWidget {
  const CenterCircularProgress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
      color: Colors.amberAccent,
      strokeWidth: 10,
    ));
  }
}
