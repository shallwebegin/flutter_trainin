import 'package:flutter/material.dart';
import 'package:flutter_trainin/product/language/language_items.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({super.key});

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return _categoryCard(model: _items[index]);
          },
        ),
      ),
    );
  }
}

class _categoryCard extends StatelessWidget {
  const _categoryCard({
    super.key,
    required CollectionModel model,
  }) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 40),
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Expanded(
              child: Image.asset(
                _model.imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_model.title),
                  Text('${_model.price} eth'),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;
  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}

class CollectionItems {
  late final List<CollectionModel> items;

  CollectionItems() {
    items = [
      CollectionModel(
          imagePath: ProjectImages.imageCOllection,
          title: LanguageItems.abstractArt,
          price: 3.2),
      CollectionModel(
          imagePath: ProjectImages.imageCOllection,
          title: LanguageItems.abstractArt2,
          price: 3.5),
      CollectionModel(
          imagePath: ProjectImages.imageCOllection,
          title: LanguageItems.abstractArt3,
          price: 3.7)
    ];
  }
}

class ProjectImages {
  static const imageCOllection = 'assets/jpeg/image_collection.jpeg';
}
