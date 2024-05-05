import 'package:flutter/material.dart';
import 'package:flutter_advance/presentation/resources/color_manager.dart';
import 'package:flutter_advance/presentation/resources/style_manager.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Text(
          "on board page",
          style: getMediumStyle(color: Colors.black),
        ),
      )),
    );
  }
}
