import 'package:flutter/material.dart';
import 'notes_screen.dart';
import 'formula_screen.dart';
import 'mcq_screen.dart';
import 'pyq_screen.dart';
import 'ai_chat_screen.dart';

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
      backgroundColor: const Color(0xFF080808),
      appBar: AppBar(
        backgroundColor: const Color(0xFFB00020),
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

            const SizedBox(height: 6),

            Text(
              subject,
              style: TextStyle(
                color: Colors.red.shade300,
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Everything you need for this chapter in one place.",
              style: TextStyle(color: Colors.white70),
            ),

            const SizedBox(height: 25),

            buildCard(
              context,
              Icons.menu_book,
              "Quick Notes",
              "NCERT summary with exam tips",
              Colors.blueAccent,
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
              Colors.orangeAccent,
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
              "Chapter-wise practice",
              Colors.greenAccent,
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
              "CBSE 2018-2025",
              Colors.amber,
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
              "Step-by-step NCERT tutor",
              Colors.redAccent,
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AIChatScreen(
                      subject: subject,
                      chapter: chapter,
                    ),
                  ),
                );
              },
            ),

            buildCard(
              context,
              Icons.camera_alt,
              "Scan Question",
              "Camera OCR (next update)",
              Colors.purpleAccent,
              () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Camera OCR is coming next."),
                  ),
                );
              },
            ),

            buildCard(
              context,
              Icons.mic,
              "Voice Doubt",
              "Speak your question",
              Colors.cyanAccent,
              () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Voice assistant is coming next."),
                  ),
                );
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
    Color iconColor,
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
            gradient: const LinearGradient(
              colors: [
                Color(0xFF232323),
                Color(0xFF121212),
              ],
            ),
            borderRadius: BorderRadius.circular(22),
            border: Border.all(
              color: Colors.redAccent,
              width: 1.3,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.red.withOpacity(0.22),
                blurRadius: 14,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.red.shade900,
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 28,
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
                    const SizedBox(height: 5),
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
                size: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
