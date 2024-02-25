import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_trainin/101/column_row_learn.dart';
import 'package:flutter_trainin/101/custom_widget_learn.dart';
import 'package:flutter_trainin/101/indicator_learn.dart';
import 'package:flutter_trainin/101/list_tile_learn.dart';
import 'package:flutter_trainin/101/stack_learn.dart';
import 'package:flutter_trainin/demos/note_demos_view.dart';
import 'package:flutter_trainin/demos/stack_demo.view.dart';

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
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(color: Colors.white),
        appBarTheme: const AppBarTheme(
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.transparent,
            elevation: 0),
      ),
      home: StackViewDemo(),
    );
  }
}
