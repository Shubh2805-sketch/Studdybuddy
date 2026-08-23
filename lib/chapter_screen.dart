import 'package:flutter/material.dart';
import 'notes_screen.dart';
import 'mcq_screen.dart';

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
        foregroundColor: Colors.white,
        title: Text(
          chapter,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          Text(
            chapter,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),

          _buildCard(
            context,
            "Quick Notes",
            Icons.menu_book,
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

          _buildCard(
            context,
            "Formula Sheet",
            Icons.functions,
            () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Formula Sheet coming soon"),
                ),
              );
            },
          ),

          _buildCard(
            context,
            "NCERT MCQs",
            Icons.quiz,
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => McqScreen(
                    subject: subject,
                    chapter: chapter,
                  ),
                ),
              );
            },
          ),

          _buildCard(
            context,
            "Previous Year Questions",
            Icons.history_edu,
            () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("PYQs coming soon"),
                ),
              );
            },
          ),

          _buildCard(
            context,
            "Ask AI Doubt",
            Icons.smart_toy,
            () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("AI feature coming soon"),
                ),
              );
            },
          ),

          _buildCard(
            context,
            "Scan Question",
            Icons.camera_alt,
            () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Scanner coming soon"),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildCard(
    BuildContext context,
    String title,
    IconData icon,
    VoidCallback onTap,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xFF1B1B1F),
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: Colors.redAccent,
              width: 2,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.redAccent.withOpacity(0.25),
                blurRadius: 12,
                spreadRadius: 1,
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
                    fontSize: 22,
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
}
