import 'package:flutter/material.dart';
import 'package:flutter_trainin/product/views/auth/login/login_view.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NillApp',
      home: LoginView(),
    );
  }
}
