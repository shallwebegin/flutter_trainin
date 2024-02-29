import 'package:flutter/material.dart';
import 'package:flutter_trainin/product/navigator/navigator_routes.dart';
import 'package:lottie/lottie.dart';

class LottieLearn extends StatefulWidget {
  const LottieLearn({super.key});

  @override
  State<LottieLearn> createState() => _LottieLearnState();
}

class _LottieLearnState extends State<LottieLearn> {
  Future<void> navigatetoHome(BuildContext context) async {
    await Future.delayed(Duration(seconds: 1));
    Navigator.of(context).pushReplacementNamed(NavigateRoutes.home.withParaf);
  }

  @override
  void initState() {
    super.initState();
    navigatetoHome(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoadingLotttie(),
    );
  }
}

class LoadingLotttie extends StatelessWidget {
  const LoadingLotttie({
    super.key,
  });
  final _loadingLottie =
      'https://lottie.host/42878da0-981c-48c1-9fbb-7012587e4cec/SGbUToIHK7.json';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.network(_loadingLottie),
    );
  }
}
