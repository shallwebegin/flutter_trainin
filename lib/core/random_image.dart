import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({super.key, this.height = 100});
  final double height;
  final imageUrl =
      'https://imgkit.otelz.com/placeimages/turkey/edirne/kesan_kesan-sehir-merkezi-ec559c.jpg?tr=w-600,h-315';
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: height,
      fit: BoxFit.cover,
    );
  }
}
