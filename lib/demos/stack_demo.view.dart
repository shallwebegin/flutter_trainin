import 'package:flutter/material.dart';
import 'package:flutter_trainin/core/random_image.dart';

class StackViewDemo extends StatelessWidget {
  const StackViewDemo({super.key});
  final _cardHeight = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  child: RandomImage(),
                  bottom: _cardHeight / 2,
                ),
                Positioned(
                  height: _cardHeight,
                  bottom: 0,
                  width: 200,
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(),
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 6,
          )
        ],
      ),
    );
  }
}
