import 'package:flutter/material.dart';
import 'chapter_screen.dart';

class SubjectScreen extends StatelessWidget {
  final String subject;

  const SubjectScreen({
    super.key,
    required this.subject,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> chapters = getChapters(subject);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        elevation: 0,
        centerTitle: true,
        title: Text(subject),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: chapters.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChapterScreen(
                        subject: subject,
                        chapter: chapters[index],
                      ),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1A1A1A),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.red.shade700),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red.withOpacity(0.2),
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.red.shade800,
                        child: Text(
                          "${index + 1}",
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          chapters[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
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
          },
        ),
      ),
    );
  }

  List<String> getChapters(String subject) {
    if (subject == "Physics") {
      return [
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
        "Semiconductor Electronics",
      ];
    }

    if (subject == "Chemistry") {
      return [
        "Solutions",
        "Electrochemistry",
        "Chemical Kinetics",
        "d and f Block Elements",
        "Coordination Compounds",
        "Haloalkanes and Haloarenes",
        "Alcohols, Phenols and Ethers",
        "Aldehydes, Ketones and Carboxylic Acids",
        "Amines",
        "Biomolecules",
        "Polymers",
        "Chemistry in Everyday Life",
      ];
    }

    return [
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
      "Probability",
    ];
  }
}
