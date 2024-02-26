import 'package:flutter/material.dart';
import 'package:flutter_trainin/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user9 = PostModel8(body: 'a', title: 'b');

  @override
  void initState() {
    super.initState();
    final user1 = PostModel1()..userId = 1;
    user1.body = 'hello';

    final user2 = PostModel2('body', 1, 'title', 2);

    final user3 = PostModel3(2, 1, 'title', 'body');

    // Localde çalışıyorsan bu en mantıklısı
    final user4 = PostModel4(userId: 2, id: 1, title: 'title', body: 'body');

    final user5 = PostModel5(userId: 2, id: 3, title: 'title', body: 'body');

    final user6 = PostModel6(userId: 2, id: 3, title: 'title', body: 'body');

    final user7 = PostModel7();

    //Service ile iş yapıyorsan en mantıklısı bu
    final user8 = PostModel8(body: 'a');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          user9 = PostModel8(title: 'Onpressed');
        });
      }),
      appBar: AppBar(
        title: Text(user9.title ?? 'Not have any data'),
      ),
    );
  }
}
