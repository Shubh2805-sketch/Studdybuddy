import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const StudyBuddyApp(),
  );
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

        scaffoldBackgroundColor:
            const Color(0xFF080B14),

        colorScheme:
            ColorScheme.fromSeed(
          seedColor:
              const Color(0xFF8B5CF6),
          brightness:
              Brightness.dark,
        ),

        appBarTheme:
            const AppBarTheme(
          backgroundColor:
              Color(0xFF0D1220),
          foregroundColor:
              Colors.white,
          elevation: 0,
          centerTitle: false,
        ),

        cardTheme:
            const CardThemeData(
          color:
              Color(0xFF121827),
          elevation: 4,
          margin: EdgeInsets.zero,
        ),

        inputDecorationTheme:
            InputDecorationTheme(
          filled: true,
          fillColor:
              const Color(0xFF151C2C),
          border:
              OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(
              18,
            ),
            borderSide:
                BorderSide.none,
          ),
          enabledBorder:
              OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(
              18,
            ),
            borderSide:
                const BorderSide(
              color:
                  Color(0xFF263149),
            ),
          ),
          focusedBorder:
              OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(
              18,
            ),
            borderSide:
                const BorderSide(
              color:
                  Color(0xFF8B5CF6),
              width: 1.5,
            ),
          ),
        ),

        snackBarTheme:
            const SnackBarThemeData(
          backgroundColor:
              Color(0xFF151C2C),
          contentTextStyle:
              TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),

        textTheme:
            const TextTheme(
          bodyLarge: TextStyle(
            color: Colors.white,
          ),
          bodyMedium: TextStyle(
            color: Colors.white70,
          ),
          titleLarge: TextStyle(
            color: Colors.white,
            fontWeight:
                FontWeight.bold,
          ),
          headlineSmall:
              TextStyle(
            color: Colors.white,
            fontWeight:
                FontWeight.bold,
          ),
        ),
      ),

      home:
          const HomeScreen(),
    );
  }
}
