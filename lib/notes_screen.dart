import 'package:flutter/material.dart';
import 'data/notes_data.dart';

class NotesScreen extends StatelessWidget {
  final String subject;
  final String chapter;

  const NotesScreen({
    super.key,
    required this.subject,
    required this.chapter,
  });

  @override
  Widget build(BuildContext context) {
    final notes = studyBuddyNotes[subject]?[chapter] ??
        "Notes for this chapter are not available yet.";

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        title: const Text("Quick Notes"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              chapter,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              subject,
              style: TextStyle(
                color: Colors.red.shade300,
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 22),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  color: Colors.red.shade700,
                  width: 1.5,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.red.withOpacity(0.25),
                    blurRadius: 14,
                  ),
                ],
              ),
              child: Text(
                notes,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  height: 1.7,
                ),
              ),
            ),

            const SizedBox(height: 24),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.red.shade900.withOpacity(0.15),
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: Colors.redAccent),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [

                  Row(
                    children: [
                      Icon(Icons.lightbulb, color: Colors.yellow),
                      SizedBox(width: 8),
                      Text(
                        "Exam Tip",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 12),

                  Text(
                    "Read NCERT examples carefully. Most CBSE questions are directly based on NCERT concepts and formulas.",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
