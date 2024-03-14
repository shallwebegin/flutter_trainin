import 'package:flutter/material.dart';

class ScroolBar extends StatelessWidget {
  const ScroolBar({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        child: SingleChildScrollView(
      child: child,
    ));
  }
}
