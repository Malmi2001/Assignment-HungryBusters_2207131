import 'package:flutter/material.dart';
import 'package:assignmenttwo/splash.dart'; // Import the splash screen
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(), // Set SplashScreen as the initial route
      // Other routes and configurations...
    );
  }
}
