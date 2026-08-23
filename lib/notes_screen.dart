import 'package:flutter/material.dart';

class NotesScreen extends StatelessWidget {
  final String subject;
  final String chapter;

  const NotesScreen({
    super.key,
    required this.subject,
    required this.chapter,
  });

  @override
  Widget build(BuildContext context) {
    final note = getNotes(subject, chapter);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        title: Text(chapter),
        centerTitle: true,
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
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              subject,
              style: TextStyle(
                color: Colors.red.shade300,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 24),

            buildCard("📘 Chapter Overview", note["overview"]!),
            buildCard("⭐ Key Points", note["points"]!),
            buildCard("📐 Important Formula", note["formula"]!),
            buildCard("📝 Exam Tip", note["tip"]!),
            buildCard("🧠 Memory Trick", note["trick"]!),
          ],
        ),
      ),
    );
  }

  Widget buildCard(String title, String text) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: Colors.red.shade700),
        boxShadow: [
          BoxShadow(
            color: Colors.red.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.redAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }

  Map<String, String> getNotes(String subject, String chapter) {

    if (chapter == "Electric Charges and Fields") {
      return {
        "overview":
            "This chapter explains electric charge, Coulomb's law, electric field, electric field lines and Gauss's law.",
        "points":
            "• Like charges repel.\n"
            "• Unlike charges attract.\n"
            "• Electric field points from + to -.\n"
            "• Field inside a conductor is zero.\n"
            "• Gauss's law is important for derivations.",
        "formula":
            "F = kq₁q₂/r²\nE = F/q\nE = kQ/r²\nΦ = Q/ε₀",
        "tip":
            "Practice derivations of electric field due to line charge, plane sheet and spherical shell.",
        "trick":
            "Remember 'PLUS pushes, MINUS pulls' for electric field direction."
      };
    }

    if (chapter == "Inverse Trigonometric Functions") {
      return {
        "overview":
            "Learn principal values, domains, ranges and important identities.",
        "points":
            "• sin⁻¹x range = [-π/2, π/2]\n"
            "• cos⁻¹x range = [0, π]\n"
            "• tan⁻¹x range = (-π/2, π/2)",
        "formula":
            "sin⁻¹x + cos⁻¹x = π/2\n"
            "tan⁻¹x + cot⁻¹x = π/2",
        "tip":
            "Always check principal value before solving.",
        "trick":
            "Remember 'SCT' = Sin, Cos, Tan principal ranges."
      };
    }

    if (chapter == "Solutions") {
      return {
        "overview":
            "Study concentration terms, Raoult's law and colligative properties.",
        "points":
            "• Mole fraction has no unit.\n"
            "• Raoult's law applies to ideal solutions.\n"
            "• Elevation in boiling point and depression in freezing point are important.",
        "formula":
            "P = XP°\nΔTb = Kbm\nΔTf = Kfm",
        "tip":
            "Numericals from concentration conversion are frequently asked.",
        "trick":
            "Remember 'BP Up, FP Down'."
      };
    }

    return {
      "overview":
          "NCERT quick revision notes for $chapter.",
      "points":
          "• Read NCERT diagrams carefully.\n"
          "• Memorize definitions.\n"
          "• Learn important derivations.\n"
          "• Practice NCERT examples.",
      "formula":
          "Important formulas of $chapter will appear here.",
      "tip":
          "Revise this chapter for 15 minutes before attempting MCQs.",
      "trick":
          "Create a one-line summary after every topic."
    };
  }
}
