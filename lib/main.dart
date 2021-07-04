import 'package:flutter/material.dart';
import 'package:foodify_app/constants.dart';
import 'package:foodify_app/screens/home/home_screen.dart';
import 'package:foodify_app/screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      theme: ThemeData(primaryColor: kBackground),
      routes: {
        "/": (context) => SplashScreen(),
        "/home": (context) => HomeScreen(),
      },
    );
  }
}
