import 'package:flutter/material.dart';

class PyqScreen extends StatelessWidget {
  final String subject;
  final String chapter;

  const PyqScreen({
    super.key,
    required this.subject,
    required this.chapter,
  });

  List<Map<String, String>> get questions {
    if (subject == "Physics") {
      return [
        {
          "q":
              "Define electric potential at a point. Derive the expression for the potential due to a point charge.",
          "a":
              "Electric potential at a point is the work done per unit positive test charge in bringing it from infinity to that point. For a point charge q, V = kq/r."
        },
        {
          "q":
              "Derive the expression for the capacitance of a parallel plate capacitor.",
          "a":
              "For plates of area A separated by distance d, capacitance in vacuum is C = ε₀A/d."
        },
        {
          "q":
              "Explain the effect of inserting a dielectric between the plates of a capacitor.",
          "a":
              "A dielectric reduces the effective electric field and increases the capacitance by a factor equal to the dielectric constant K."
        },
      ];
    }

    if (subject == "Chemistry") {
      return [
        {
          "q":
              "Why are aldehydes generally more reactive than ketones towards nucleophilic addition?",
          "a":
              "Aldehydes have less steric hindrance and only one alkyl group attached to the carbonyl carbon, making the carbonyl carbon more accessible."
        },
        {
          "q":
              "Why is benzaldehyde less reactive than propenal?",
          "a":
              "Conjugation with the benzene ring delocalises electron density and reduces the electrophilic character of the carbonyl carbon."
        },
      ];
    }

    return [
      {
        "q":
            "Find the derivative of x³ + 2x² - 5x + 7.",
        "a":
            "Using the power rule, the derivative is 3x² + 4x - 5."
      },
      {
        "q":
            "Evaluate ∫(2x + 3) dx.",
        "a":
            "Integrating term by term gives x² + 3x + C."
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    final data = questions;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color(0xFFB71C1C),
        title: const Text("Previous Year Questions"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          Text(
            chapter,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          ...List.generate(
            data.length,
            (index) => _QuestionCard(
              number: index + 1,
              question: data[index]["q"]!,
              answer: data[index]["a"]!,
            ),
          ),
        ],
      ),
    );
  }
}

class _QuestionCard extends StatefulWidget {
  final int number;
  final String question;
  final String answer;

  const _QuestionCard({
    required this.number,
    required this.question,
    required this.answer,
  });

  @override
  State<_QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<_QuestionCard> {
  bool showAnswer = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF19191D),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: Colors.redAccent.withOpacity(0.7),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "PYQ ${widget.number}",
            style: const TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),

          const SizedBox(height: 12),

          Text(
            widget.question,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              height: 1.5,
            ),
          ),

          const SizedBox(height: 15),

          ElevatedButton(
            onPressed: () {
              setState(() {
                showAnswer = !showAnswer;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              foregroundColor: Colors.white,
            ),
            child: Text(
              showAnswer ? "Hide Answer" : "Show Answer",
            ),
          ),

          if (showAnswer) ...[
            const SizedBox(height: 15),
            Text(
              widget.answer,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 16,
                height: 1.5,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
