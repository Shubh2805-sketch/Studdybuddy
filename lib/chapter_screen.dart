import 'package:flutter/material.dart';
import 'notes_screen.dart';

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
        title: Text(chapter),
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
            const SizedBox(height: 24),

            menuCard(
              context,
              Icons.menu_book,
              "Quick Notes",
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

            menuCard(
              context,
              Icons.functions,
              "Formula Sheet",
              () {
                comingSoon(context, "Formula Sheet");
              },
            ),

            menuCard(
              context,
              Icons.quiz,
              "NCERT MCQs",
              () {
                comingSoon(context, "NCERT MCQs");
              },
            ),

            menuCard(
              context,
              Icons.history_edu,
              "Previous Year Questions",
              () {
                comingSoon(context, "PYQs");
              },
            ),

            menuCard(
              context,
              Icons.smart_toy,
              "Ask AI Doubt",
              () {
                comingSoon(context, "AI Tutor");
              },
            ),

            menuCard(
              context,
              Icons.camera_alt,
              "Scan Question",
              () {
                comingSoon(context, "Camera Scanner");
              },
            ),

            menuCard(
              context,
              Icons.mic,
              "Voice Doubt",
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

  Widget menuCard(
    BuildContext context,
    IconData icon,
    String title,
    VoidCallback onTap,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.red.shade700,
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.red.withOpacity(0.25),
                blurRadius: 12,
              ),
            ],
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.redAccent,
                size: 34,
              ),
              const SizedBox(width: 18),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
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
        content: Text("$feature will be available soon."),
      ),
    );
  }
}
