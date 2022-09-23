import 'package:flutter/material.dart';

class TwitterActionButtonView extends StatefulWidget {
  const TwitterActionButtonView({Key? key}) : super(key: key);

  @override
  State<TwitterActionButtonView> createState() =>
      _TwitterActionButtonViewState();
}

final key = GlobalKey();
FocusNode focusNodeTextFieldOne = FocusNode();
FocusNode focusNodeTextFieldTwo = FocusNode();

class _TwitterActionButtonViewState extends State<TwitterActionButtonView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            TextFormField(
              focusNode: focusNodeTextFieldTwo,
              minLines: 10,
              maxLines: 10,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.blueGrey[800],
    );
  }
}
