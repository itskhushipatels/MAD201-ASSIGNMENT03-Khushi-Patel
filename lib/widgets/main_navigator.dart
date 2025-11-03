// lib/main_navigator.dart

import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/favorites_screen.dart';
import '../screens/profile_screen.dart';
import 'app_drawer.dart';

class MainNavigator extends StatefulWidget {
  const MainNavigator({super.key});

  @override
  State<MainNavigator> createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  // Part E: Maintain current index state
  int _selectedIndex = 0;

  // List of screens for the Bottom Navigation Bar
  final List<Widget> _screens = [
    HomeScreen(), // Index 0: Home Tab
    FavoritesScreen(), // Index 1: Favorites Tab
    ProfileScreen(), // Index 2: Profile Tab
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Helper to dynamically set the app bar title
  String _getTitle(int index) {
    switch (index) {
      case 0:
        return 'Movie Collection';
      case 1:
        return 'Your Favorites';
      case 2:
        return 'User Profile';
      default:
        return 'Movie Explorer';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_getTitle(_selectedIndex)),
        backgroundColor: Colors.blueGrey,
      ),

      // Part F: Navigation Drawer (Accessible from any page via app bar)
      drawer: const AppDrawer(),

      // Display the currently selected screen content
      body: _screens[_selectedIndex],

      // Part E: Implement BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped, // Switch content accordingly
      ),
    );
  }
}
