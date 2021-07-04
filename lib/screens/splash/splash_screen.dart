import 'package:flutter/material.dart';
import 'package:foodify_app/constants.dart';
import 'package:foodify_app/screens/splash/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = SplashController();
    controller.currentUser(context);
    return Scaffold(
      backgroundColor: kBackground,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: 105,
          width: 72,
          child: Image.asset(
            "assets/icons/logo.png",
          ),
        ),
      ),
    );
  }
}
