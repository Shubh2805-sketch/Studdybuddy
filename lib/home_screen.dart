import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("StudyBuddy")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: const [
            _SubjectCard("Physics", Icons.bolt),
            _SubjectCard("Chemistry", Icons.science),
            _SubjectCard("Maths", Icons.calculate),
            _SubjectCard("Revision", Icons.refresh),
          ],
        ),
      ),
    );
  }
}

class _SubjectCard extends StatelessWidget {
  final String title;
  final IconData icon;

  const _SubjectCard(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40),
            const SizedBox(height: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}
