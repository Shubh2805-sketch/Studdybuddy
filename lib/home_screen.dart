import 'package:flutter/material.dart';
import 'subject_screen.dart';
import 'stats_screen.dart';
import 'revision_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color(0xFFB71C1C),
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'StudyBuddy',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(18, 20, 18, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome to StudyBuddy 👋',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Learn smarter. Practice better. Achieve more.',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 17,
                ),
              ),

              const SizedBox(height: 28),

              _buildMainCard(
                context,
                title: 'Study',
                subtitle: 'Choose a subject and start learning',
                icon: Icons.menu_book_rounded,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SubjectScreen(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 16),

              _buildMainCard(
                context,
                title: 'Revision',
                subtitle: 'Quickly revise important topics',
                icon: Icons.refresh_rounded,
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
                title: 'My Progress',
                subtitle: 'Check your study statistics',
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

              const SizedBox(height: 30),

              const Text(
                'Subjects',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 14),

              Row(
                children: [
                  Expanded(
                    child: _buildSubjectCard(
                      context,
                      'Physics',
                      Icons.bolt_rounded,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildSubjectCard(
                      context,
                      'Chemistry',
                      Icons.science_rounded,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              Row(
                children: [
                  Expanded(
                    child: _buildSubjectCard(
                      context,
                      'Mathematics',
                      Icons.calculate_rounded,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildSubjectCard(
                      context,
                      'Biology',
                      Icons.biotech_rounded,
                    ),
                  ),
                ],
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
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(22),
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xFF1B1B1F),
            borderRadius: BorderRadius.circular(22),
            border: Border.all(
              color: const Color(0xFFFF3B4A),
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFFFF3B4A).withOpacity(0.18),
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
                  color: const Color(0xFFFF3B4A).withOpacity(0.15),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Icon(
                  Icons.menu_book_rounded,
                  color: Color(0xFFFF5360),
                  size: 32,
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
                        fontSize: 22,
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
                color: Colors.white54,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSubjectCard(
    BuildContext context,
    String subject,
    IconData icon,
  ) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
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
        child: Container(
          height: 125,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFF17171B),
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: const Color(0xFFFF3B4A).withOpacity(0.8),
              width: 1.3,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: const Color(0xFFFF5360),
                size: 34,
              ),
              const SizedBox(height: 10),
              Text(
                subject,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
