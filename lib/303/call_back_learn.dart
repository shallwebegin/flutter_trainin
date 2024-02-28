// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_trainin/product/widget/button/answer_button.dart';
import 'package:flutter_trainin/product/widget/button/loading_button.dart';
import 'package:flutter_trainin/product/widget/callback_dropdown.dart';

class CallBackLearn extends StatefulWidget {
  const CallBackLearn({super.key});

  @override
  State<CallBackLearn> createState() => _CallBackLearnState();
}

class _CallBackLearnState extends State<CallBackLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            CallBackDropdown(
              onUserSelected: (CallBackUser user) {
                print(user);
              },
            ),
            AnswerButton(
              onNumber: (number) {
                return number % 3 == 1;
              },
            ),
            LoadingButton(
                title: 'Save',
                onPressed: () {
                  return Future.delayed(
                    Duration(seconds: 1),
                  );
                })
          ],
        ),
      ),
    );
  }
}

class CallBackUser {
  final String name;
  final int id;

  CallBackUser(this.name, this.id);
  static List<CallBackUser> dummyUsers() {
    return [
      CallBackUser('bk', 123),
      CallBackUser('bk2', 124),
    ];
  }

  @override
  bool operator ==(covariant CallBackUser other) {
    if (identical(this, other)) return true;

    return other.name == name && other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode;
}
