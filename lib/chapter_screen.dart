import 'package:flutter/material.dart';
import 'notes_screen.dart';
import 'formula_screen.dart';
import 'mcq_screen.dart';
import 'pyq_screen.dart';

class ChapterScreen extends StatelessWidget {
  final String subject;
  final String chapter;

  const ChapterScreen({
    super.key,
    required this.subject,
    required this.chapter,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        elevation: 0,
        centerTitle: true,
        title: Text(chapter),
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

            const SizedBox(height: 25),

            buildCard(
              context,
              Icons.menu_book,
              "Quick Notes",
              "NCERT chapter summary",
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => NotesScreen(
                      subject: subject,
                      chapter: chapter,
                    ),
                  ),
                );
              },
            ),

            buildCard(
              context,
              Icons.functions,
              "Formula Sheet",
              "Important formulas",
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => FormulaScreen(
                      subject: subject,
                      chapter: chapter,
                    ),
                  ),
                );
              },
            ),

            buildCard(
              context,
              Icons.quiz,
              "NCERT MCQs",
              "Practice chapter-wise MCQs",
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MCQScreen(
                      subject: subject,
                      chapter: chapter,
                    ),
                  ),
                );
              },
            ),

            buildCard(
              context,
              Icons.history_edu,
              "Previous Year Questions",
              "CBSE 2018-2025 PYQs",
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PYQScreen(
                      subject: subject,
                      chapter: chapter,
                    ),
                  ),
                );
              },
            ),

            buildCard(
              context,
              Icons.smart_toy,
              "Ask AI Doubt",
              "Chat with StudyBuddy AI",
              () {
                comingSoon(context, "AI Tutor");
              },
            ),

            buildCard(
              context,
              Icons.camera_alt,
              "Scan Question",
              "Solve using camera",
              () {
                comingSoon(context, "Camera Scanner");
              },
            ),

            buildCard(
              context,
              Icons.mic,
              "Voice Doubt",
              "Ask using microphone",
              () {
                comingSoon(context, "Voice Assistant");
              },
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildCard(
    BuildContext context,
    IconData icon,
    String title,
    String subtitle,
    VoidCallback onTap,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        borderRadius: BorderRadius.circular(22),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: const Color(0xFF1A1A1A),
            borderRadius: BorderRadius.circular(22),
            border: Border.all(
              color: Colors.red.shade700,
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.red.withOpacity(0.25),
                blurRadius: 12,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: Colors.red.shade800,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 26,
                ),
              ),

              const SizedBox(width: 16),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 4),

                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),

              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white54,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void comingSoon(BuildContext context, String feature) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red.shade900,
        content: Text("$feature coming soon."),
      ),
    );
  }
}
