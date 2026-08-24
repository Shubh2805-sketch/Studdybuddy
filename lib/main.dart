import 'package:flutter/material.dart';

void main() {
  runApp(const StudyBuddyTestApp());
}

class StudyBuddyTestApp extends StatelessWidget {
  const StudyBuddyTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StudyBuddy',
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('StudyBuddy'),
          backgroundColor: Colors.red,
        ),
        body: const Center(
          child: Text(
            'StudyBuddy is working!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
            ),
          ),
        ),
      ),
    );
  }
}
