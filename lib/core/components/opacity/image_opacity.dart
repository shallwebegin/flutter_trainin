import 'package:flutter/material.dart';
import 'package:flutter_trainin/core/enums/duration_enum.dart';

class ImageOpacity extends StatefulWidget {
  const ImageOpacity({super.key, required this.url});

  final String url;

  @override
  State<ImageOpacity> createState() => _ImageOpacityState();
}

class _ImageOpacityState extends State<ImageOpacity> {
  bool isOpacity = true;

  @override
  void initState() {
    super.initState();
    waitForOpacity();
  }

  Future<void> waitForOpacity() async {
    await Future.delayed(DurationEnums.medium.time);
    setState(() {
      isOpacity = !isOpacity;
    });
  }

  double get opacityValue => isOpacity ? 0 : 1;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: opacityValue,
      duration: DurationEnums.medium.time,
      child: Image.network(widget.url),
    );
  }
}
