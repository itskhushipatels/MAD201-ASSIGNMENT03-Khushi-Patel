// lib/main.dart

import 'package:flutter/material.dart';
import 'widgets/main_navigator.dart';

void main() {
  runApp(const MovieExplorerApp());
}

class MovieExplorerApp extends StatelessWidget {
  const MovieExplorerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Explorer',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      // Set the MainNavigator as the home screen
      home: const MainNavigator(),
      debugShowCheckedModeBanner: false,
    );
  }
}
