import 'package:flutter/material.dart';

class FormLearnView extends StatefulWidget {
  const FormLearnView({super.key});

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {
  GlobalKey<FormState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Form(
            autovalidateMode: AutovalidateMode.always,
            onChanged: () {
              print('a');
            },
            key: _key,
            child: Column(
              children: [
                TextFormField(
                  validator: FormFieldValidator().isNotEmpty,
                ),
                DropdownButtonFormField<String>(
                    validator: FormFieldValidator().isNotEmpty,
                    items: const [
                      DropdownMenuItem(
                        child: Text('A'),
                        value: 'v',
                      ),
                      DropdownMenuItem(
                        child: Text('A'),
                        value: 'v1',
                      ),
                      DropdownMenuItem(
                        child: Text('A'),
                        value: 'v2',
                      ),
                    ],
                    onChanged: (value) {})
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_key.currentState?.validate() ?? false) {
                print('Okey');
              }
            },
            child: const Text('Save'),
          ),
        ],
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
  static const String _notEmpty = 'Bos gecilemez';
}
