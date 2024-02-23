import 'package:flutter/material.dart';

class ContainerSizedboxLearn extends StatelessWidget {
  const ContainerSizedboxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text('data' * 500),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('bbb' * 50),
          ),
          Container(
            width: 50,
            height: 50,
            constraints: const BoxConstraints(maxWidth: 150, minWidth: 50),
            decoration: ProjectUtility.boxDecoration,
            child: Text('aa' * 100),
          ),
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: const LinearGradient(
      colors: [Colors.green, Colors.black],
    ),
    border: Border.all(width: 10, color: Colors.white12),
  );
}
