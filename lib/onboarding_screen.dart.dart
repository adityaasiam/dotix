import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text("On Boarding"),
        actions: [
          // Button on the top right
          TextButton(
            onPressed: () {
              // Add action for the button
            },
            child: const Text(
              "Skip",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Introduction text
            const Center(
              child: Text(
                "Start Playing",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,)

              ),
            ),
            const SizedBox(height: 30), // Space between text and text box
            // Text box below introduction text
            const Text(
              "Dive into our trivia challenges and put your knowledge to the test.",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),


              ),

            const SizedBox(height: 24), // Space before the "Next" button
            // "Next" button at the bottom
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed('/login'); // Navigate to the Login page
                },
                // ignore: sort_child_properties_last
                child: const Text("Continue"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  // ignore: prefer_const_constructors
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
