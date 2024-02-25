import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_trainin/product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            maxLength: 20,
            buildCounter: (context,
                {int? currentLength, bool? isFocused, maxLength}) {
              return _animatedContainer(currentLength);
            },
            keyboardType: TextInputType.emailAddress,
            autofillHints: [AutofillHints.email],
            focusNode: focusNodeTextFieldOne,
            textInputAction: TextInputAction.next,
            decoration: _inputDecorator().emailInput,
          ),
          TextField(
            focusNode: focusNodeTextFieldTwo,
            minLines: 2,
            maxLines: 4,
          ),
        ],
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      color: Colors.green,
      height: 10,
      width: 10.0 * (currentLength ?? 0),
    );
  }
}

class _inputDecorator {
  final emailInput = const InputDecoration(
      prefixIcon: Icon(Icons.mail),
      border: OutlineInputBorder(),
      labelText: LanguageItems.mailTitle,
      filled: true);
}
