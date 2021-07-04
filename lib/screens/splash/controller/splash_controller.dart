import 'package:flutter/cupertino.dart';

class SplashController {
  Future<void> currentUser(BuildContext context) async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, "/home");
  }
}
