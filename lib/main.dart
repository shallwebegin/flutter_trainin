import 'package:flutter/material.dart';

import 'package:flutter_trainin/101/image_learn.dart';
import 'package:flutter_trainin/202/animated_learn_view.dart';
import 'package:flutter_trainin/202/cache/shared_learn_cache.dart';
import 'package:flutter_trainin/202/form_learn_view.dart';
import 'package:flutter_trainin/202/oop_learn_view.dart';
import 'package:flutter_trainin/202/state_manage/state_manage_learn_view.dart';

import 'package:flutter_trainin/202/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: /*ThemeData.dark().copyWith(
        tabBarTheme: const TabBarTheme(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.red,
            indicatorSize: TabBarIndicatorSize.label),
        bottomAppBarTheme:
            const BottomAppBarTheme(shape: CircularNotchedRectangle()),
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(color: Colors.white),
        appBarTheme: const AppBarTheme(
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.transparent,
            elevation: 0),
      ),*/
          LightTheme().theme,
      home: const SharedLearn(),
    );
  }
}
