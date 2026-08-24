import 'package:flutter/material.dart';
import 'notes_screen.dart';
import 'mcq_screen.dart';
import 'formula_screen.dart';
import 'pyq_screen.dart';
import 'ai_screen.dart';
import 'camera_scan_screen.dart';

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
        backgroundColor: const Color(0xFFB71C1C),
        foregroundColor: Colors.white,
        elevation: 0,
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
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            subject,
            style: const TextStyle(
              color: Colors.white54,
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 28),

          _buildCard(
            context,
            title: "Quick Notes",
            subtitle: "Important concepts and exam points",
            icon: Icons.menu_book_rounded,
            onTap: () {
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
            title: "Formula Sheet",
            subtitle: "Important formulas for this chapter",
            icon: Icons.functions_rounded,
            onTap: () {
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

          _buildCard(
            context,
            title: "NCERT MCQs",
            subtitle: "Test your understanding",
            icon: Icons.quiz_rounded,
            onTap: () {
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
            title: "Previous Year Questions",
            subtitle: "Practice board-style questions",
            icon: Icons.history_edu_rounded,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => PyqScreen(
                    subject: subject,
                    chapter: chapter,
                  ),
                ),
              );
            },
          ),

          _buildCard(
            context,
            title: "Ask AI Doubt",
            subtitle: "Ask StudyBuddy anything",
            icon: Icons.smart_toy_rounded,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => AiScreen(
                    subject: subject,
                    chapter: chapter,
                  ),
                ),
              );
            },
          ),

          _buildCard(
            context,
            title: "Scan Question",
            subtitle: "Take a photo of a question",
            icon: Icons.camera_alt_rounded,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => CameraScanScreen(
                    subject: subject,
                    chapter: chapter,
                  ),
                ),
              );
            },
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF17171A),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: const Color(0xFFFF4D5E),
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFFF3045).withOpacity(0.15),
            blurRadius: 18,
            spreadRadius: 1,
          ),
        ],
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Container(
                width: 58,
                height: 58,
                decoration: BoxDecoration(
                  color: const Color(0xFF2A1115),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Icon(
                  icon,
                  color: const Color(0xFFFF5363),
                  size: 31,
                ),
              ),

              const SizedBox(width: 18),

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
                        color: Colors.white54,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),

              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white54,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
