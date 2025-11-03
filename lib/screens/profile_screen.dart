// lib/screens/profile_screen.dart

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Part D: Displays static user details
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Column(
                children: [
                  // Avatar image placeholder
                  CircleAvatar(radius: 60, child: Icon(Icons.person, size: 60)),
                  SizedBox(height: 15),
                  // Name
                  Text(
                    'Khushi Patel',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  // Email
                  Text(
                    'khushi.patel@gmail.com',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Divider(height: 40, thickness: 1),

            // Bio section
            Text(
              'Bio:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Avid movie enthusiast and aspiring film critic. I love exploring classic Bollywood cinema and discovering new independent films. This Movie Explorer App is my passion project to organize my favorite watch lists.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
