import 'package:flutter/material.dart';
import 'package:flutter_trainin/core/random_image.dart';

class StackViewDemo extends StatelessWidget {
  const StackViewDemo({super.key});
  final _cardHeight = 100.0;
  final _cardWidth = 200.0;

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
                  width: _cardWidth,
                  child: _cardCustom(),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 6,
          )
        ],
      ),
    );
  }

  Card _cardCustom() {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(),
    );
  }
}
