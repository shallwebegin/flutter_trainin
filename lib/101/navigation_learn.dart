import 'package:flutter/material.dart';
import 'package:flutter_trainin/101/image_learn.dart';
import 'package:flutter_trainin/101/navigate_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManager {
  List<int> selectedItems = [];
  void addSelected(int index, bool isAdd) {
    setState(() {
      isAdd ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () async {
              final response = await navigateToWidgetNormal<bool>(
                context,
                NavigateDetailLearn(
                  isOkay: selectedItems.contains(index),
                ),
              );
              if (response is bool) {
                addSelected(index, response);
              }
            },
            child: Placeholder(
              color: selectedItems.contains(index) ? Colors.green : Colors.red,
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (context) => widget,
          fullscreenDialog: true,
          settings: const RouteSettings()),
    );
  }
}

Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
  return Navigator.of(context).push<T>(
    MaterialPageRoute(
        builder: (context) => widget,
        fullscreenDialog: true,
        settings: const RouteSettings()),
  );
}
