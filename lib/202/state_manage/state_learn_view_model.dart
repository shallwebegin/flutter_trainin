import 'package:flutter/material.dart';
import 'package:flutter_trainin/202/state_manage/state_manage_learn_view.dart';

abstract class StateLearnViewModel extends State<StateManageLearn> {
  bool isVisible = false;

  bool isOpacity = false;

  @override
  void initState() {
    super.initState();
  }

  void changeVisible() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  void changeOpacity() {
    setState(() {
      isOpacity = !isOpacity;
    });
  }
}
