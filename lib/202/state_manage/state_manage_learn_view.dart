import 'package:flutter/material.dart';
import 'package:flutter_trainin/202/state_manage/state_learn_view_model.dart';

class StateManageLearn extends StatefulWidget {
  const StateManageLearn({super.key});

  @override
  State<StateManageLearn> createState() => _StateManageLearnState();
}

class _StateManageLearnState extends StateLearnViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        changeVisible();
      }),
      appBar: AppBar(
        backgroundColor: isOpacity ? Colors.red : Colors.green,
        shadowColor: isVisible ? Colors.amber : Colors.grey,
      ),
    );
  }
}
