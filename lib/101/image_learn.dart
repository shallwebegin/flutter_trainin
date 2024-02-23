import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 400,
            width: 300,
            child: PngImage(
              name: ImageItems().appleWithBook,
            ),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBook = 'indir';
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/jpeg/$name.jpeg',
      fit: BoxFit.cover,
    );
  }
}
