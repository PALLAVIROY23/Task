import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    controller.count;
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          "assets/animations/Animation.json",
          fit: BoxFit.contain, // Ensures the animation fits nicely within the screen
        ),
      ),
    );
  }
}
