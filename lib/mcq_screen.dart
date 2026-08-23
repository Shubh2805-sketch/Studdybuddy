import 'package:flutter/material.dart';

class MCQScreen extends StatefulWidget {
  final String subject;
  final String chapter;

  const MCQScreen({
    super.key,
    required this.subject,
    required this.chapter,
  });

  @override
  State<MCQScreen> createState() => _MCQScreenState();
}

class _MCQScreenState extends State<MCQScreen> {
  int currentQuestion = 0;
  int score = 0;
  int? selectedOption;
  bool answered = false;

  late List<Map<String, dynamic>> questions;

  @override
  void initState() {
    super.initState();
    questions = getQuestions(widget.subject, widget.chapter);
  }

  @override
  Widget build(BuildContext context) {
    if (questions.isEmpty) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.red.shade900,
          title: const Text("MCQs"),
        ),
        body: const Center(
          child: Text(
            "MCQs will be added soon.",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      );
    }

    final q = questions[currentQuestion];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        title: Text(widget.chapter),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Question ${currentQuestion + 1}/${questions.length}",
                  style: const TextStyle(color: Colors.white70),
                ),
                Text(
                  "Score: $score",
                  style: const TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.red.shade700),
              ),
              child: Text(
                q["question"],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            ...List.generate(4, (index) {
              bool correct = index == q["answer"];
              bool chosen = selectedOption == index;

              Color color = Colors.grey.shade900;

              if (answered) {
                if (correct) {
                  color = Colors.green;
                } else if (chosen) {
                  color = Colors.red;
                }
              }

              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: InkWell(
                  borderRadius: BorderRadius.circular(18),
                  onTap: answered
                      ? null
                      : () {
                          setState(() {
                            selectedOption = index;
                          });
                        },
                  child: Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Colors.red.shade700),
                    ),
                    child: Text(
                      q["options"][index],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              );
            }),

            const Spacer(),

            if (!answered)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade800,
                    padding: const EdgeInsets.all(16),
                  ),
                  onPressed: selectedOption == null
                      ? null
                      : () {
                          setState(() {
                            answered = true;
                            if (selectedOption == q["answer"]) {
                              score++;
                            }
                          });
                        },
                  child: const Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

            if (answered)
              Column(
                children: [

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Text(
                      "Explanation:\n${q["explanation"]}",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),

                  const SizedBox(height: 14),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red.shade800,
                        padding: const EdgeInsets.all(16),
                      ),
                      onPressed: () {
                        if (currentQuestion == questions.length - 1) {
                          Navigator.pop(context);
                        } else {
                          setState(() {
                            currentQuestion++;
                            selectedOption = null;
                            answered = false;
                          });
                        }
                      },
                      child: Text(
                        currentQuestion == questions.length - 1
                            ? "Finish"
                            : "Next Question",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  List<Map<String, dynamic>> getQuestions(String subject, String chapter) {

    if (subject == "Physics") {
      return [
        {
          "question": "Coulomb's law gives the force between?",
          "options": [
            "Two charges",
            "Two magnets",
            "Two currents",
            "Two waves"
          ],
          "answer": 0,
          "explanation":
              "Coulomb's law calculates the electrostatic force between two charges."
        },
        {
          "question": "SI unit of electric field is?",
          "options": [
            "Volt",
            "Newton/Coulomb",
            "Joule",
            "Ampere"
          ],
          "answer": 1,
          "explanation":
              "Electric field is measured in Newton per Coulomb."
        },
      ];
    }

    if (subject == "Chemistry") {
      return [
        {
          "question": "Raoult's law belongs to which chapter?",
          "options": [
            "Solutions",
            "Amines",
            "Polymers",
            "Kinetics"
          ],
          "answer": 0,
          "explanation":
              "Raoult's law is studied in the Solutions chapter."
        },
        {
          "question": "Nernst equation is used in?",
          "options": [
            "Electrochemistry",
            "Biomolecules",
            "Aldehydes",
            "Alcohols"
          ],
          "answer": 0,
          "explanation":
              "Nernst equation calculates cell potential."
        },
      ];
    }

    return [
      {
        "question": "Derivative of x² is?",
        "options": [
          "x",
          "2x",
          "x²",
          "2"
        ],
        "answer": 1,
        "explanation":
            "Using d(xⁿ)/dx = nxⁿ⁻¹."
      },
      {
        "question": "Value of sin⁻¹x + cos⁻¹x is?",
        "options": [
          "π",
          "π/4",
          "π/2",
          "2π"
        ],
        "answer": 2,
        "explanation":
            "One of the most important NCERT identities."
      },
    ];
  }
}
