import 'package:flutter/material.dart';
import 'package:flutter_trainin/product/constants/color_constants.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key, this.onPressed, this.child});
  final VoidCallback? onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          fixedSize: Size(320, 50),
          backgroundColor: ColorConstants.purpleDark,
          foregroundColor: ColorConstants.white),
      child: child,
    );
  }
}
