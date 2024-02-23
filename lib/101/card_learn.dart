import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          _CustomCard(
            child: SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('ALİ')),
            ),
          ),
          _CustomCard(
            child: SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('ALİ')),
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectMargin {
  static const cardMargin = EdgeInsets.all(10);
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargin.cardMargin,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: child,
    );
  }
}
