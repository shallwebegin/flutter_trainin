import 'package:flutter/material.dart';

import 'package:flutter_trainin/202/theme/light_theme.dart';
import 'package:flutter_trainin/303/call_back_learn.dart';
import 'package:flutter_trainin/303/tabbar_advance.dart';

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
      home: const TabAdvanceLearn(),
    );
  }
}
