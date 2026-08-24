import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
        brightness: Brightness.dark,
        useMaterial3: true,

        scaffoldBackgroundColor: Colors.black,

        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF3B4A),
          brightness: Brightness.dark,
        ),

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFB71C1C),
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
        ),

        cardTheme: const CardTheme(
          color: Color(0xFF1B1B1F),
          elevation: 6,
          margin: EdgeInsets.zero,
          shadowColor: Colors.black54,
        ),

        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Colors.white,
          ),
          bodyMedium: TextStyle(
            color: Colors.white70,
          ),
          titleLarge: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          headlineSmall: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),

        snackBarTheme: const SnackBarThemeData(
          backgroundColor: Color(0xFF2A2A2E),
          contentTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),

      home: const HomeScreen(),
    );
  }
}
