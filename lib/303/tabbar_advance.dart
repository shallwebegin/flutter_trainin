import 'package:flutter/material.dart';
import 'package:flutter_trainin/101/icon_learn.dart';
import 'package:flutter_trainin/101/image_learn.dart';
import 'package:flutter_trainin/303/feed_view.dart';

class TabAdvanceLearn extends StatefulWidget {
  const TabAdvanceLearn({super.key});

  @override
  State<TabAdvanceLearn> createState() => _TabAdvanceLearnState();
}

class _TabAdvanceLearnState extends State<TabAdvanceLearn>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(onPressed: () {
          _tabController.animateTo(_MyTabViews.home.index);
        }),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: _myTabView(tabController: _tabController),
        ),
        appBar: AppBar(),
        body: _tabBarView(tabController: _tabController),
      ),
    );
  }
}

class _myTabView extends StatelessWidget {
  const _myTabView({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      tabs: _MyTabViews.values.map((e) => Tab(text: '${e.name}')).toList(),
    );
  }
}

class _tabBarView extends StatelessWidget {
  const _tabBarView({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      physics: const NeverScrollableScrollPhysics(),
      controller: _tabController,
      children: [
        const FeedView(),
        IconLearnView(),
        IconLearnView(),
        IconLearnView(),
      ],
    );
  }
}

enum _MyTabViews { home, settings, favorite, profile }

extension _MyTabViewExtension on _MyTabViews {}
