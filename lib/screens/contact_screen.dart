// lib/screens/contact_screen.dart

import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact Us')),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Developer Contact',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Divider(height: 30),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('student@university.edu'),
              subtitle: Text('Email us for support'),
            ),
            ListTile(
              leading: Icon(Icons.code),
              title: Text('GitHub/StudentProfile'),
              subtitle: Text('Check out the source code'),
            ),
          ],
        ),
      ),
    );
  }
}
