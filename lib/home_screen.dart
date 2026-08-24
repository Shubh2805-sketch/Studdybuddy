import 'package:flutter/material.dart';

import 'subject_screen.dart';
import 'revision_screen.dart';
import 'stats_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const Color backgroundColor = Color(0xFF080808);
  static const Color cardColor = Color(0xFF19191D);
  static const Color accentColor = Color(0xFFFF4D5A);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: accentColor,
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'StudyBuddy',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(18, 20, 18, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Your Study Companion',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Learn • Practice • Achieve',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              _buildMainCard(
                context,
                title: 'Study',
                subtitle: 'Choose a subject and start learning',
                icon: Icons.menu_book_rounded,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SubjectScreen(
                        subject: 'Physics',
                      ),
                    ),
                  );
                },
              ),

              const SizedBox(height: 16),

              _buildMainCard(
                context,
                title: 'Revision',
                subtitle: 'Revise important topics quickly',
                icon: Icons.replay_rounded,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const RevisionScreen(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 16),

              _buildMainCard(
                context,
                title: 'Statistics',
                subtitle: 'Track your learning progress',
                icon: Icons.bar_chart_rounded,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const StatsScreen(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 25),

              const Text(
                'Subjects',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              _buildSubjectCard(
                context,
                'Physics',
                Icons.bolt_rounded,
              ),

              const SizedBox(height: 12),

              _buildSubjectCard(
                context,
                'Chemistry',
                Icons.science_rounded,
              ),

              const SizedBox(height: 12),

              _buildSubjectCard(
                context,
                'Mathematics',
                Icons.calculate_rounded,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMainCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(22),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(
            color: accentColor,
            width: 1.5,
          ),
          boxShadow: [
            BoxShadow(
              color: accentColor.withOpacity(0.18),
              blurRadius: 14,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 58,
              height: 58,
              decoration: BoxDecoration(
                color: accentColor.withOpacity(0.15),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(
                icon,
                color: accentColor,
                size: 32,
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
                      fontSize: 21,
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
              Icons.arrow_forward_ios_rounded,
              color: Colors.white60,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSubjectCard(
    BuildContext context,
    String subject,
    IconData icon,
  ) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => SubjectScreen(
              subject: subject,
            ),
          ),
        );
      },
      borderRadius: BorderRadius.circular(18),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 17,
        ),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: accentColor.withOpacity(0.8),
            width: 1.2,
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: accentColor,
              size: 30,
            ),

            const SizedBox(width: 15),

            Expanded(
              child: Text(
                subject,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white54,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
