import 'package:flutter/material.dart';
import 'package:flutter_trainin/202/cache/shared_learn_cache.dart';
import 'package:flutter_trainin/202/cache/shared_manager.dart';
import 'package:flutter_trainin/202/cache/user_cache/user_cache_manager.dart';
import 'package:flutter_trainin/202/cache/user_model.dart';

class SharedListCache extends StatefulWidget {
  const SharedListCache({super.key});

  @override
  State<SharedListCache> createState() => _SharedListCacheState();
}

class _SharedListCacheState extends LoadingStatefull<SharedListCache> {
  late final UserCacheManager userCacheManager;
  List<User> _users = [];

  @override
  void initState() {
    super.initState();
    initalzeAndSave();
  }

  Future<void> initalzeAndSave() async {
    changeLoading();
    final SharedManager manager = SharedManager();
    await manager.init();
    userCacheManager = UserCacheManager(manager);
    _users = userCacheManager.getItems() ?? [];
    changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isLoading
            ? CircularProgressIndicator(
                color: Theme.of(context).colorScheme.background)
            : null,
        actions: isLoading
            ? null
            : [
                IconButton(
                  onPressed: () async {
                    changeLoading();
                    await userCacheManager.saveItems(_users);
                    changeLoading();
                  },
                  icon: const Icon(Icons.download_for_offline_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove_circle),
                ),
              ],
      ),
      body: _userListView(users: _users),
    );
  }
}

class _userListView extends StatelessWidget {
  _userListView({super.key, required this.users});

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(users[index].name ?? ''),
            subtitle: Text(users[index].description ?? ''),
            trailing: Text(
              users[index].url ?? '',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        );
      },
    );
  }
}
