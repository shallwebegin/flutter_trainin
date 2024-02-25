import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({Key? key}) : super(key: key);
  final String title = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomFoodButton(
                  onPressed: () {},
                  title: title,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                child: CustomFoodButton(
                  onPressed: () {},
                  title: title,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

mixin _ColorsUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

mixin _PaddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(8);
}

class CustomFoodButton extends StatelessWidget
    with _ColorsUtility, _PaddingUtility {
  CustomFoodButton({super.key, required this.title, required this.onPressed});
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: whiteColor),
      onPressed: onPressed,
      child: Padding(
        padding: normalPadding,
        child: Text(
          title,
          style:
              Theme.of(context).textTheme.titleLarge!.copyWith(color: redColor),
        ),
      ),
    );
  }
}
