import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
              return Colors.red;
            })),
            onPressed: () {},
            child: const Text('Save'),
          ),
          ElevatedButton(
            onPressed: null,
            child: const Text('A'),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.abc),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('ABABA'),
          ),
          InkWell(
            onTap: () {},
            child: const Text('HACİBABA'),
          ),
        ],
      ),
    );
  }
}
