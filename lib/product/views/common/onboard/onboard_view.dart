import 'package:flutter/material.dart';
import 'package:flutter_trainin/core/extensions/ui_extensions.dart';
import 'package:flutter_trainin/product/constants/color_constants.dart';
import 'package:flutter_trainin/product/constants/string_constants.dart';
import 'package:lottie/lottie.dart';

class OnboardView extends StatelessWidget {
  const OnboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: onBoardContainer(context),
    );
  }

  Container onBoardContainer(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [ColorConstants.purpleDark, ColorConstants.blueDark],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            onBoardAppName(context),
            onBoardSizedBoxLottie(),
            onBoardText(context),
            onBoardPaddingElevatedButtonb(context),
          ],
        ),
      ),
    );
  }

  Padding onBoardPaddingElevatedButtonb(BuildContext context) {
    return Padding(
      padding: context.padding11x,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorConstants.grayPrimary,
        ),
        child: Text(
          StringConstants.oBoardElevatedButtonText,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: ColorConstants.white),
        ),
      ),
    );
  }

  Text onBoardText(BuildContext context) {
    return Text(
      StringConstants.onBoardText,
      style: Theme.of(context)
          .textTheme
          .titleMedium!
          .copyWith(color: Theme.of(context).colorScheme.background),
    );
  }

  SizedBox onBoardSizedBoxLottie() {
    return SizedBox(
      child: Lottie.network(
        StringConstants.lottieName,
      ),
    );
  }

  Text onBoardAppName(BuildContext context) {
    return Text(
      StringConstants.appName,
      style: Theme.of(context)
          .textTheme
          .headlineLarge!
          .copyWith(color: Theme.of(context).colorScheme.background),
    );
  }
}
