import 'package:flutter/material.dart';
import 'chapter_screen.dart';

class SubjectScreen extends StatelessWidget {
  final String subject;

  const SubjectScreen({super.key, required this.subject});

  List<String> get chapters {
    switch (subject) {
      case "Physics":
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

      case "Chemistry":
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

      case "Maths":
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

      default:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        title: Text(subject),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: chapters.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: InkWell(
              borderRadius: BorderRadius.circular(18),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        ChapterScreen(chapter: chapters[index]),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: Colors.red.shade700,
                    width: 1.5,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red.withOpacity(0.2),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 22,
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
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.redAccent,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
