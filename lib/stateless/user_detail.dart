import 'package:flutter/material.dart';
import 'package:flutter_trainin/stateful/model/card_model.dart';

class UserDetailScreen extends StatelessWidget {
  const UserDetailScreen({super.key, required this.user});

  final CardModel user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.title),
      ),
      body: Column(
        children: [
          Scrollbar(
            child: Text(user.storyText),
          ),
        ],
      ),
    );
  }
}
