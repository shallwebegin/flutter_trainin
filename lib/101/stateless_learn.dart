import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  StatelessLearn({super.key, required this.title2});
  var title2 = 'DAYKO';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TitleTextWidget(title: title2),
          _emptyBox(),
          const TitleTextWidget(title: 'DAYKO'),
          _emptyBox(),
          const TitleTextWidget(title: 'DAYKO'),
          _emptyBox(),
          const TitleTextWidget(title: 'DAYKO'),
          _emptyBox(),
          const _CustomContainer(),
          _emptyBox(),
        ],
      ),
    );
  }

  SizedBox _emptyBox() {
    return const SizedBox(
      height: 10,
    );
  }
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
      ),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      'data',
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
