// lib/widgets/app_drawer.dart

import 'package:flutter/material.dart';
import '../screens/about_screen.dart';
import '../screens/contact_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  void _navigateTo(BuildContext context, Widget screen) {
    // Close the drawer before navigating
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text('Movie Explorer App'),
            accountEmail: Text('Your Ultimate Movie List'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.movie, size: 40, color: Colors.blueGrey),
            ),
            decoration: BoxDecoration(color: Colors.blueGrey),
          ),

          // Home
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home (Main Tabs)'),
            onTap: () {
              // Close the drawer and return to the main navigator screen
              Navigator.pop(context);
            },
          ),

          // Part F: About app
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About App'),
            onTap: () => _navigateTo(context, const AboutScreen()),
          ),

          // Part F: Contact Us
          ListTile(
            leading: const Icon(Icons.contact_mail),
            title: const Text('Contact Us'),
            onTap: () => _navigateTo(context, const ContactScreen()),
          ),
        ],
      ),
    );
  }
}
