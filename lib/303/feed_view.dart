import 'package:flutter/material.dart';
import 'package:flutter_trainin/202/service/post_model.dart';
import 'package:flutter_trainin/202/service/post_service.dart';

class FeedView extends StatefulWidget {
  const FeedView({super.key});

  @override
  State<FeedView> createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView>
    with AutomaticKeepAliveClientMixin {
  final PostService _postService = PostService();

  late final Future<List<PostModel>?> _itemsFuture;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _itemsFuture = _postService.fetchPostItemsAdvance();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {});
      }),
      appBar: AppBar(
        actions: [
          ElevatedButton(onPressed: () {}, child: const Icon(Icons.save))
        ],
      ),
      body: _FeedFutureBuilder(itemsFuture: _itemsFuture),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class _FeedFutureBuilder extends StatelessWidget {
  const _FeedFutureBuilder({
    super.key,
    required Future<List<PostModel>?> itemsFuture,
  }) : _itemsFuture = itemsFuture;

  final Future<List<PostModel>?> _itemsFuture;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PostModel>?>(
        future: _itemsFuture,
        builder:
            (BuildContext context, AsyncSnapshot<List<PostModel>?> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Placeholder();
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );

            case ConnectionState.active:
              return Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data?.length ?? 0,
                  itemBuilder: (context, int index) {
                    return ListTile(
                      title: Text(snapshot.data?[index].body ?? ''),
                    );
                  },
                );
              } else {
                return Placeholder();
              }
          }
        });
  }
}
