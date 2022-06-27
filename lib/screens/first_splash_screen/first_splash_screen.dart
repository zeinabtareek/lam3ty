import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import '../../constants/constant.dart';
import '../animated_screens/animated_splash.dart';
import '../load_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        backgroundColor: K.whiteColor,
        splash: Stack(
          children: [
            SizedBox(
              height: Get.height,
              width: Get.width,
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
        nextScreen:   LoadingScreen(),
        splashIconSize: 250,
        duration: 4000,
        splashTransition: SplashTransition.scaleTransition,
        animationDuration: const Duration(seconds: 1),
      ),
    );
  }
}
