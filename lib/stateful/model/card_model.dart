class CardModel {
  final String title;
  final String description;
  final String image;
  final String storyText;

  CardModel(
      {required this.title,
      required this.description,
      required this.image,
      required this.storyText});

  factory CardModel.fakeItems() {
    return CardModel(
        title: 'BK10',
        description: 'Flutter Gelistirici',
        image: 'https://picsum.photos/200/300',
        storyText: 'Shall We Begin');
  }
}
