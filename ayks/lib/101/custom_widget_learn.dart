import 'package:flutter/material.dart';

class CustomWidgetView extends StatelessWidget {
  CustomWidgetView({Key? key}) : super(key: key);
  final String title = 'Food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomFoodButton(
                  title: title,
                  onPressed: () {},
                )),
          )),
          const SizedBox(height: 100),
          CustomFoodButton(title: title, onPressed: () {}),
        ],
      ),
    );
  }
}

class _ColorstUtility {
  final Color white = Colors.white;
  final Color deepOrange = Colors.deepOrange;
}

class _PaddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
}

class CustomFoodButton extends StatelessWidget
    with _ColorstUtility, _PaddingUtility {
  CustomFoodButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: deepOrange, shape: const StadiumBorder()),
        onPressed: () {},
        child: Padding(
          padding: normalPadding,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                ?.copyWith(color: white, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
