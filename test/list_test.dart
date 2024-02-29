import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_trainin/303/generic_learn.dart';
import 'package:flutter_trainin/product/widget/card/high_card.dart';

void main() {
  setUp(
    () {},
  );
  test('List best of', () {
    List<GenericUser> users = [
      GenericUser('BK', '9', 10),
      GenericUser('BK', '9', 10),
      GenericUser('BK', '9', 20)
    ];
    List<HighCard> highCards = users.map((e) {
      return HighCard(items: e.name.split(''));
    }).toList();
    try {
      final response = users.singleWhere(
        (element) => element.findUserName('BK'),
        orElse: () {
          return GenericUser('name', 'id', 15);
        },
      );
      print(response);
    } catch (e) {
      print(e);
    }
  });
}
