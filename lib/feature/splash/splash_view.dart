import 'package:flutter/material.dart';
import 'package:flutter_trainin/core/extensions/ui_extensions.dart';
import 'package:flutter_trainin/product/constants/color_constants.dart';
import 'package:flutter_trainin/product/constants/string_constants.dart';
import 'package:flutter_trainin/product/views/common/onboard/onboard_view.dart';
import 'package:lottie/lottie.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: context.durationVerySlow4x);
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => OnboardView(),
          ),
        );
      }
    });
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: splashViewContainer(context),
    );
  }

  Container splashViewContainer(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [ColorConstants.purpleDark, ColorConstants.blueDark],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: splashViewPadding(context),
    );
  }

  Padding splashViewPadding(BuildContext context) {
    return Padding(
      padding: context.padding11x,
      child: splashLottieAnimation(context),
    );
  }

  Center splashLottieAnimation(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            StringConstants.appName,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: Theme.of(context).colorScheme.background),
          ),
          SizedBox(
            child: Lottie.network(StringConstants.lottieName,
                controller: _animationController),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }
}
