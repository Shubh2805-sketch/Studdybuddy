import 'package:flutter/material.dart';

class PYQScreen extends StatelessWidget {
  final String subject;
  final String chapter;

  const PYQScreen({
    super.key,
    required this.subject,
    required this.chapter,
  });

  @override
  Widget build(BuildContext context) {
    final questions = getPYQs(subject, chapter);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        title: const Text("Previous Year Questions"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.red.shade900,
                  Colors.red.shade700,
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  chapter,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  subject,
                  style: const TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: questions.length,
              itemBuilder: (context, index) {
                final q = questions[index];

                return Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF181818),
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(color: Colors.red.shade700),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red.withOpacity(0.18),
                        blurRadius: 10,
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Row(
                          children: [
                            badge(q["year"], Colors.red),
                            const SizedBox(width: 8),
                            badge("${q["marks"]} Marks", Colors.orange),
                            const SizedBox(width: 8),
                            badge(q["difficulty"], Colors.green),
                          ],
                        ),

                        const SizedBox(height: 16),

                        Text(
                          q["question"],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 18),

                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red.shade800,
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.all(14),
                                ),
                                icon: const Icon(Icons.visibility),
                                label: const Text("View Solution"),
                                onPressed: () {
                                  showSolution(context, q);
                                },
                              ),
                            ),

                            const SizedBox(width: 10),

                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.bookmark_border,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget badge(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: color.withOpacity(0.18),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }

  void showSolution(BuildContext context, Map<String, dynamic> q) {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF111111),
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(26)),
      ),
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.all(22),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Text(
                  "NCERT Solution",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                Text(
                  q["question"],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  "Step-by-Step Answer",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 12),

                Text(
                  q["solution"],
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),

                const SizedBox(height: 25),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade800,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Done"),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  List<Map<String, dynamic>> getPYQs(String subject, String chapter) {

    if (subject == "Physics" &&
        chapter == "Electric Charges and Fields") {
      return [
        {
          "year": "CBSE 2024",
          "marks": "5",
          "difficulty": "Hard",
          "question":
              "Derive the expression for the electric field due to an infinite plane sheet of charge.",
          "solution":
              "Apply Gauss's law. Choose a cylindrical Gaussian surface. Flux passes through both faces. Therefore, E = σ/2ε₀."
        },
        {
          "year": "CBSE 2023",
          "marks": "3",
          "difficulty": "Medium",
          "question":
              "State Coulomb's law and write its mathematical expression.",
          "solution":
              "Force between two point charges is proportional to the product of charges and inversely proportional to the square of their separation."
        },
      ];
    }

    if (subject == "Maths" &&
        chapter == "Inverse Trigonometric Functions") {
      return [
        {
          "year": "CBSE 2024",
          "marks": "2",
          "difficulty": "Easy",
          "question":
              "Prove that sin⁻¹x + cos⁻¹x = π/2.",
          "solution":
              "Use principal values of inverse trigonometric functions and complementary angle identities."
        },
        {
          "year": "CBSE 2022",
          "marks": "3",
          "difficulty": "Medium",
          "question":
              "Evaluate tan⁻¹1 + tan⁻¹√3.",
          "solution":
              "tan⁻¹1 = π/4 and tan⁻¹√3 = π/3. Sum = 7π/12."
        },
      ];
    }

    if (subject == "Chemistry" &&
        chapter == "Solutions") {
      return [
        {
          "year": "CBSE 2024",
          "marks": "5",
          "difficulty": "Hard",
          "question":
              "Explain Raoult's law with one application.",
          "solution":
              "Raoult's law states that partial pressure equals mole fraction multiplied by vapour pressure of the pure component."
        },
      ];
    }

    return [
      {
        "year": "CBSE",
        "marks": "5",
        "difficulty": "Medium",
        "question":
            "Previous year questions for this chapter will appear here.",
        "solution":
            "Complete NCERT-based solutions will be added."
      }
    ];
  }
}
