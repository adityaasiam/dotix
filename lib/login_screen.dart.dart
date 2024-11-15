// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> _googleLogin() async {
    try {
      GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      UserCredential userCredential = await _auth.signInWithCredential(
          credential);

      User? user = userCredential.user;
      Fluttertoast.showToast(msg: 'Logged in as: ${user?.email}');

      // Navigate to Avatar Selection page
      Get.toNamed('/avatar');
    } catch (e) {
      Fluttertoast.showToast(msg: 'Login failed: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // Center content vertically
          crossAxisAlignment: CrossAxisAlignment.center,
          // Center content horizontally
          children: [
            // Image centered under the AppBar
            Center(
              child: Image.asset(
                'assets/Frame 139.png', // Replace with your image path
                width: 400, // Set your desired width
                height: 400, // Set your desired height
              ),
            ),
            const SizedBox(height: 20), // Space between image and text

            // Create Account text
            const Text(
              "Create Your Account",
              style: TextStyle(color: Colors.black, fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),

            // Intro text
            const Text(
              "Ready to become a trivia champion? Let's get started!",
              style: TextStyle(color: Colors.black, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Text Button: "Continue with"
            Center(
              child: TextButton(
                onPressed: () {
                  Get.toNamed('/avatar');
                },
                child: const Text("or Continue with"),
              ),
            ),
            const SizedBox(height: 10), // Space between buttons

            // Google Login button
            Center(
              child: ElevatedButton(
                onPressed: _googleLogin, // Implement the Google login function
                child: const Text("Login With Google"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}