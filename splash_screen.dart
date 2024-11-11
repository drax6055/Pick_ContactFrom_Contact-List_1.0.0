import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notification/ui/splash/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SplashController getController = Get.put(SplashController());
    getController.navigateToNextScreen();

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('Splash Screen'),
        ),
      ),
    );
  }
}
