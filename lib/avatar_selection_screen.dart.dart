import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';

class AvatarSelectionScreen extends StatefulWidget {
  const AvatarSelectionScreen({super.key});

  @override
  _AvatarSelectionScreenState createState() => _AvatarSelectionScreenState();
}

class _AvatarSelectionScreenState extends State<AvatarSelectionScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text(""),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,

          crossAxisAlignment: CrossAxisAlignment.end,

          children: [

            Center(
              child: Image.asset(
                'assets/Frame 2147223882.png', // Replace with your app logo path
                width: 250, // Set the desired width
                height: 250, // Set the desired height
              ),
            ),
            const SizedBox(height: 30),


            GestureDetector(
              onTap: () {

                _pickImage();
              },
              child: Container(
                width: 400, // Set your desired width
                height: 300, // Set your desired height
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  // Placeholder color
                  borderRadius: BorderRadius.circular(30),
                  // Rounded corners (adjust as needed)
                  image: const DecorationImage(
                    image: AssetImage('assets/Frame 2147223892.png'),
                    // Placeholder image
                    fit: BoxFit.fill, // Ensure image covers the container area
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20), // Space between image and text

            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.offNamed('/home');
                },
                child: const Text("Next"),
              ),
            ),
          ],
        ),
      ),
    );
  }

// Example image picking function using image_picker (you'll need to add image_picker package)
  void _pickImage() async {
    // Logic to pick an image from gallery or camera
    // ignore: deprecated_member_use
    final pickedFile = await ImagePicker().getImage(
        source: ImageSource.gallery); // Pick from gallery

    if (pickedFile != null) {
    } else {
    }
  }
}