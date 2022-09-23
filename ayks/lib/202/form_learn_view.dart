import 'package:flutter/material.dart';

class FormLearnView extends StatefulWidget {
  const FormLearnView({Key? key}) : super(key: key);

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {
  final GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _key,
        autovalidateMode: AutovalidateMode.always,
        onChanged: () {},
        child: Column(
          children: [
            TextFormField(validator: FormFieldValidator().isNotEmpty),
            TextFormField(validator: FormFieldValidator().isNotEmpty),
            DropdownButtonFormField<String>(
                validator: FormFieldValidator().isNotEmpty,
                items: const [
                  DropdownMenuItem(child: Text('18-24'), value: 'v'),
                  DropdownMenuItem(child: Text('24+'), value: 'v2'),
                  DropdownMenuItem(child: Text('6-18'), value: 'v3'),
                ],
                onChanged: (value) {}),
            CheckboxListTile(value: true, onChanged: (value) {}),
            ElevatedButton(
                onPressed: () {
                  if (_key.currentState?.validate() ?? false) {
                    print('okey');
                  }
                },
                child: const Text('Kaydet'))
          ],
        ),
      ),
    );
  }
}

class FormFieldValidator {
  String? isNotEmpty(String? data) {
    return (data?.isNotEmpty ?? false) ? null : ValidatorMessage._notEmpty;
  }
}

class ValidatorMessage {
  static const String _notEmpty = 'Bu alan boş bırakılamaz';
}
