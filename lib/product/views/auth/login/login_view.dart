import 'package:flutter/material.dart';
import 'package:flutter_trainin/core/extensions/ui_extensions.dart';
import 'package:flutter_trainin/product/components/login_button.dart';
import 'package:flutter_trainin/product/constants/color_constants.dart';
import 'package:flutter_trainin/product/constants/string_constants.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: loginViewStack(context),
        bottomSheet: loginViewBottomSheet());
  }

  BottomSheet loginViewBottomSheet() {
    return BottomSheet(
      backgroundColor: ColorConstants.white,
      onClosing: () {},
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.6,
          child: Card(
            child: SingleChildScrollView(
              padding: context.padding10x,
              child: Column(
                children: [
                  textFormFieldContainer(),
                  const SizedBox(
                    height: 24,
                  ),
                  textFormFieldContainer2(),
                  const SizedBox(
                    height: 50,
                  ),
                  forgotPasswordRow(context),
                  const SizedBox(
                    height: 24,
                  ),
                  loginButtonRow(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(StringConstants.orLogInBy),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: Icon(Icons.facebook),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            child: Icon(Icons.flutter_dash),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Row loginButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LoginButton(
          onPressed: () {},
          child: const Text(StringConstants.logIn),
        )
      ],
    );
  }

  Row forgotPasswordRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          StringConstants.forgotPassword,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: ColorConstants.purpleDark),
        ),
      ],
    );
  }

  Container textFormFieldContainer2() {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffECEDEE),
          borderRadius: BorderRadius.circular(48)),
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: const Icon(Icons.remove_red_eye),
          contentPadding: const EdgeInsets.all(8),
          labelText: 'Password',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(48),
          ),
        ),
      ),
    );
  }

  Container textFormFieldContainer() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffECEDEE),
        borderRadius: BorderRadius.circular(48),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(8),
          labelText: 'Email',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(48),
          ),
        ),
      ),
    );
  }

  Stack loginViewStack(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          StringConstants.randomImage,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Padding(
          padding: context.paddingVertical15x,
          child: Center(
            child: Column(
              children: [
                Text(
                  StringConstants.appName,
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Theme.of(context).colorScheme.background,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: context.val12x,
                ),
                Text(StringConstants.loginPageTextWelcome,
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: Theme.of(context).colorScheme.background,
                        fontWeight: FontWeight.w800))
              ],
            ),
          ),
        )
      ],
    );
  }
}
