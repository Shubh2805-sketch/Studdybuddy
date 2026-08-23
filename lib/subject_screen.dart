import 'package:flutter/material.dart';

class SubjectScreen extends StatelessWidget {
  final String title;

  const SubjectScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final Map<String, List<String>> chapters = {
      "Physics": [
        "Electric Charges and Fields",
        "Electrostatic Potential and Capacitance",
        "Current Electricity",
        "Moving Charges and Magnetism",
        "Magnetism and Matter",
        "Electromagnetic Induction",
        "Alternating Current",
        "Electromagnetic Waves",
        "Ray Optics and Optical Instruments",
        "Wave Optics",
        "Dual Nature of Radiation and Matter",
        "Atoms",
        "Nuclei",
        "Semiconductor Electronics"
      ],

      "Chemistry": [
        "Solutions",
        "Electrochemistry",
        "Chemical Kinetics",
        "The d and f Block Elements",
        "Coordination Compounds",
        "Haloalkanes and Haloarenes",
        "Alcohols, Phenols and Ethers",
        "Aldehydes, Ketones and Carboxylic Acids",
        "Amines",
        "Biomolecules",
        "Polymers",
        "Chemistry in Everyday Life"
      ],

      "Maths": [
        "Relations and Functions",
        "Inverse Trigonometric Functions",
        "Matrices",
        "Determinants",
        "Continuity and Differentiability",
        "Application of Derivatives",
        "Integrals",
        "Application of Integrals",
        "Differential Equations",
        "Vector Algebra",
        "Three Dimensional Geometry",
        "Linear Programming",
        "Probability"
      ],

      "Revision": [
        "Formula Sheet",
        "Important NCERT Questions",
        "PYQs",
        "Mock Tests",
        "Weak Topics",
        "Quick Revision"
      ]
    };

    final list = chapters[title] ?? [];

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: CircleAvatar(
                child: Text("${index + 1}"),
              ),
              title: Text(list[index]),
              subtitle: const Text("Notes • Formula • MCQs • AI Doubt"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ChapterScreen(
                      subject: title,
                      chapter: list[index],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

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
      appBar: AppBar(title: Text(chapter)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Text(
              chapter,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Card(
              child: ListTile(
                leading: Icon(Icons.menu_book),
                title: Text("Quick Notes"),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.functions),
                title: Text("Formula Sheet"),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.quiz),
                title: Text("NCERT MCQs"),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.history_edu),
                title: Text("Previous Year Questions"),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.smart_toy),
                title: Text("Ask AI Doubt"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
