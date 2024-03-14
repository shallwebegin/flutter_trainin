import 'package:flutter/material.dart';
import 'package:flutter_trainin/stateful/model/card_model.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key, required this.cardUser, this.onPressed});

  final CardModel cardUser;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(cardUser.image),
        ),
        title: Text(cardUser.title),
        subtitle: Text(cardUser.description),
        trailing: const Icon(Icons.arrow_right_rounded),
        onTap: onPressed,
      ),
    );
  }
}
