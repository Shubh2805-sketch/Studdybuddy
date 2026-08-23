import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const StudyBuddyApp());
}

class StudyBuddyApp extends StatelessWidget {
  const StudyBuddyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StudyBuddy',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF080808),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFB00020),
          brightness: Brightness.dark,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFB00020),
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
