import 'package:flutter/material.dart';

class MyAccPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/accimg.jpeg'), // Add your profile picture path here
            ),
            const SizedBox(height: 20),
            const Text(
              'Username: Victoria',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            const Text(
              'Email: victoria@example.com',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            const Text(
              'Phone: +1234567890',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement your logout logic here
                // For example, you might want to navigate to the login page
                // Navigator.pop(context);
              },
              child: const Text('Logout'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 230, 39, 5), // This is the color of the text
              ),
            ),
          ],
        ),
      ),
    );
  }
}
