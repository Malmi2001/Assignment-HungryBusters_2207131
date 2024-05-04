import 'dart:async';
import 'package:flutter/material.dart';
import 'login.dart'; // Make sure this import points to your LoginScreen

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loginControl();
  }

  Future<void> loginControl() async {
    await Future.delayed(Duration(seconds: 3)); // Replace this with your actual login check
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (BuildContext context) => LoginScreen()), // Navigate to LoginScreen
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final availableHeight = constraints.maxHeight;
            final imageWidth = availableHeight * 0.5;

            return Column(
              mainAxisAlignment: MainAxisAlignment.center, // This will center the image vertically
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/logo.png',
                  width: imageWidth * 1.5,
                  height: availableHeight * 1,
                  fit: BoxFit.contain,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
