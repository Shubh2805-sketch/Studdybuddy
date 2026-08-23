import 'package:flutter/material.dart';

class ChapterScreen extends StatelessWidget {
  final String chapter;

  const ChapterScreen({super.key, required this.chapter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
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
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 24),

            menuCard(context, Icons.menu_book, "Quick Notes"),
            menuCard(context, Icons.functions, "Formula Sheet"),
            menuCard(context, Icons.quiz, "NCERT MCQs"),
            menuCard(context, Icons.history_edu, "Previous Year Questions"),
            menuCard(context, Icons.smart_toy, "Ask AI Doubt"),
            menuCard(context, Icons.camera_alt, "Scan Question"),
            menuCard(context, Icons.mic, "Voice Doubt"),
          ],
        ),
      ),
    );
  }

  Widget menuCard(BuildContext context, IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("$title coming next")),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.red.shade700, width: 1.5),
            boxShadow: [
              BoxShadow(
                color: Colors.red.withOpacity(0.25),
                blurRadius: 12,
              )
            ],
          ),
          child: Row(
            children: [
              Icon(icon, color: Colors.redAccent, size: 34),
              const SizedBox(width: 18),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const Spacer(),
              const Icon(Icons.arrow_forward_ios, color: Colors.white54),
            ],
          ),
        ),
      ),
    );
  }
}
