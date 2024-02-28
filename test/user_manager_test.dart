import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_trainin/303/generic_learn.dart';

void main() {
  setUp(() {});

  test('User calculate Test', () {
    final users = [
      GenericUser('BK', '9', 10),
      GenericUser('BK', '9', 10),
      GenericUser('BK', '9', 20)
    ];

    final userManagement = UserManagement(AdminUser('badmin', 'id', 15, 1));
    final result = userManagement.calculateMoney(users);

    final response = userManagement.showNames(users);
    expect(result, 40);
  });
}
