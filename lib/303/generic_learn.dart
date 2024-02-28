class UserManagement<T extends AdminUser> {
  final AdminUser admin;

  UserManagement(this.admin);

  void sayName(GenericUser user) {
    print(user.name);
  }

  int calculateMoney(List<GenericUser> users) {
    int sum = 0;
    for (var item in users) {
      sum += item.money;
    }

    int initialValue = admin.role == 1 ? admin.money : 0;

    final sumMoney = users.map((e) => e.money).fold<int>(
        initialValue, (previousValue, element) => previousValue + element);

    final _money = users.fold<int>(initialValue,
        (previousValue, element) => previousValue + element.money);

    return (_money);
  }

  Iterable<BKModels<R>>? showNames<R>(List<GenericUser> users) {
    if (R == String) {
      final names =
          users.map((e) => BKModels<R>(e.name.split('').toList().cast()));
      return names;
    }
    return null;
  }
}

class BKModels<T> {
  final String name = 'vb';
  final List<T> items;

  BKModels(this.items);
}

class GenericUser {
  final String name;
  final String id;
  final int money;

  GenericUser(this.name, this.id, this.money);
}

class AdminUser extends GenericUser {
  final int role;
  AdminUser(String name, String id, int money, this.role)
      : super(name, id, money);
}
