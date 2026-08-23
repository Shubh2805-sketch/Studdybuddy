import 'package:flutter/material.dart';
import 'subject_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF080808),

      appBar: AppBar(
        title: const Text("StudyBuddy"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.notifications_none),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFB00020),
        onPressed: () {},
        child: const Icon(Icons.smart_toy),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Good Evening 👋",
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 6),

            const Text(
              "Let's crack CBSE Class 12 today.",
              style: TextStyle(color: Colors.white70),
            ),

            const SizedBox(height: 22),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.red.shade900,
                    Colors.red.shade700,
                  ],
                ),
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    children: [
                      Icon(Icons.local_fire_department,
                          color: Colors.orange),
                      SizedBox(width: 8),
                      Text(
                        "7 Day Streak",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),

                  SizedBox(height: 14),

                  Text(
                    "Today's Goal",
                    style: TextStyle(color: Colors.white70),
                  ),

                  SizedBox(height: 8),

                  LinearProgressIndicator(
                    value: 0.6,
                    backgroundColor: Colors.white24,
                    color: Colors.white,
                  ),

                  SizedBox(height: 8),

                  Text("3 of 5 chapters completed"),
                ],
              ),
            ),

            const SizedBox(height: 26),

            const Text(
              "Subjects",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 14),

            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 14,
              mainAxisSpacing: 14,
              children: const [

                SubjectTile(
                  title: "Physics",
                  icon: Icons.bolt,
                ),

                SubjectTile(
                  title: "Chemistry",
                  icon: Icons.science,
                ),

                SubjectTile(
                  title: "Maths",
                  icon: Icons.calculate,
                ),

                SubjectTile(
                  title: "Revision",
                  icon: Icons.auto_awesome,
                ),
              ],
            ),

            const SizedBox(height: 26),

            const Text(
              "Quick Access",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            quickCard(Icons.quiz, "Mock Test"),
            quickCard(Icons.history_edu, "Previous Year Papers"),
            quickCard(Icons.bookmarks, "Saved Questions"),
          ],
        ),
      ),
    );
  }

  static Widget quickCard(IconData icon, String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF181818),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.red.shade700),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.redAccent),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}

class SubjectTile extends StatelessWidget {
  final String title;
  final IconData icon;

  const SubjectTile({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(22),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => SubjectScreen(subject: title),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFF222222),
              Color(0xFF111111),
            ],
          ),
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: Colors.redAccent),
          boxShadow: [
            BoxShadow(
              color: Colors.red.withOpacity(0.25),
              blurRadius: 16,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(
              icon,
              size: 50,
              color: Colors.redAccent,
            ),

            const SizedBox(height: 14),

            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
