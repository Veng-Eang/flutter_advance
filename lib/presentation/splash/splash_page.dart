import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_advance/presentation/resources/assets_manager.dart';
import 'package:flutter_advance/presentation/resources/color_manager.dart';
import 'package:flutter_advance/presentation/resources/routes_manager.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(const Duration(seconds: 3), _goNext);
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.primary,
        body: const Center(
          child: Image(image: AssetImage(ImageAssetss.splashLogo)),
        ),
      ),
    );
  }
}
