import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_trainin/101/list_view_builder.dart';
import 'package:flutter_trainin/101/list_view_learn.dart';
import 'package:flutter_trainin/101/navigation_learn.dart';
import 'package:flutter_trainin/101/page_view_learn.dart';
import 'package:flutter_trainin/101/statefull_life_cycle_learn.dart';
import 'package:flutter_trainin/101/text_field_learn.dart';
import 'package:flutter_trainin/202/model_learn_view.dart';
import 'package:flutter_trainin/202/service/service_learn_view.dart';
import 'package:flutter_trainin/202/tab_learn.dart';
import 'package:flutter_trainin/demos/color_demos_view.dart';
import 'package:flutter_trainin/demos/color_life_cycle_view.dart';
import 'package:flutter_trainin/demos/my_collections_demos.dart';

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
      theme: ThemeData.dark().copyWith(
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
      ),
      home: const ServiceLearn(),
    );
  }
}
