import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

// ignore: use_key_in_widget_constructors
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to Onboarding screen after 4 seconds
    // ignore: prefer_const_constructors
    Timer(Duration(seconds: 4), () {
      Get.offNamed('/onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/Frame 139.png', // Replace with your app logo path
              width: 250, // Set the desired width
              height: 250, // Set the desired height
            ),
          ),

          Positioned(
            bottom: 20, // Distance from the bottom edge
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/Group 38.png', // Replace with the path to the bottom image
                width: 100, // Adjust size as needed
                height: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
