import 'package:flutter/material.dart';

class McqScreen extends StatefulWidget {
  final String subject;
  final String chapter;

  const McqScreen({
    super.key,
    required this.subject,
    required this.chapter,
  });

  @override
  State<McqScreen> createState() => _McqScreenState();
}

class _McqScreenState extends State<McqScreen> {
  int currentQuestion = 0;
  int score = 0;
  bool answered = false;
  int? selectedAnswer;

  late List<McqQuestion> questions;

  @override
  void initState() {
    super.initState();
    questions = _getQuestions(widget.subject, widget.chapter);
  }

  List<McqQuestion> _getQuestions(String subject, String chapter) {
    if (subject == "Physics") {
      return [
        McqQuestion(
          question: "The SI unit of electric potential is:",
          options: [
            "Volt",
            "Coulomb",
            "Newton",
            "Farad",
          ],
          answer: 0,
          explanation: "Electric potential is measured in volts (V).",
        ),
        McqQuestion(
          question: "Capacitance is defined as:",
          options: [
            "Q/V",
            "V/Q",
            "IR",
            "F/q",
          ],
          answer: 0,
          explanation: "Capacitance C = Q/V.",
        ),
        McqQuestion(
          question: "The energy stored in a capacitor is:",
          options: [
            "1/2 CV²",
            "CV",
            "Q/V",
            "IR",
          ],
          answer: 0,
          explanation: "Energy stored U = 1/2 CV².",
        ),
        McqQuestion(
          question: "Electric potential is a:",
          options: [
            "Scalar quantity",
            "Vector quantity",
            "Tensor quantity",
            "Dimensionless quantity",
          ],
          answer: 0,
          explanation: "Electric potential has magnitude but no direction.",
        ),
        McqQuestion(
          question: "The electric field inside a conductor in electrostatic equilibrium is:",
          options: [
            "Zero",
            "Maximum",
            "Infinite",
            "Variable",
          ],
          answer: 0,
          explanation:
              "The electric field inside a conductor is zero in electrostatic equilibrium.",
        ),
      ];
    }

    if (subject == "Chemistry") {
      return [
        McqQuestion(
          question: "The functional group of an aldehyde is:",
          options: [
            "-CHO",
            "-COOH",
            "-OH",
            "-NH₂",
          ],
          answer: 0,
          explanation: "Aldehydes contain the -CHO functional group.",
        ),
        McqQuestion(
          question: "Benzaldehyde has the formula:",
          options: [
            "C₆H₅CHO",
            "C₆H₅OH",
            "C₆H₆",
            "CH₃CHO",
          ],
          answer: 0,
          explanation: "Benzaldehyde is C₆H₅CHO.",
        ),
        McqQuestion(
          question: "Oxidation of an aldehyde generally produces:",
          options: [
            "Carboxylic acid",
            "Ether",
            "Amine",
            "Alkane",
          ],
          answer: 0,
          explanation:
              "Aldehydes are generally oxidised to the corresponding carboxylic acids.",
        ),
      ];
    }

    return [
      McqQuestion(
        question: "The derivative of x² is:",
        options: [
          "2x",
          "x",
          "x²",
          "2",
        ],
        answer: 0,
        explanation: "Using the power rule, d(x²)/dx = 2x.",
      ),
      McqQuestion(
        question: "The integral of 1 dx is:",
        options: [
          "x + C",
          "1 + C",
          "0",
          "x² + C",
        ],
        answer: 0,
        explanation: "∫1 dx = x + C.",
      ),
      McqQuestion(
        question: "sin²x + cos²x equals:",
        options: [
          "1",
          "0",
          "2",
          "x",
        ],
        answer: 0,
        explanation: "This is the fundamental trigonometric identity.",
      ),
    ];
  }

  void _selectAnswer(int index) {
    if (answered) return;

    setState(() {
      answered = true;
      selectedAnswer = index;

      if (index == questions[currentQuestion].answer) {
        score++;
      }
    });
  }

  void _nextQuestion() {
    if (currentQuestion < questions.length - 1) {
      setState(() {
        currentQuestion++;
        answered = false;
        selectedAnswer = null;
      });
    } else {
      _showResult();
    }
  }

  void _showResult() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog(
          backgroundColor: const Color(0xFF1B1B1F),
          title: const Text(
            "Quiz Complete 🎉",
            style: TextStyle(color: Colors.white),
          ),
          content: Text(
            "You scored $score/${questions.length}",
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 18,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                setState(() {
                  currentQuestion = 0;
                  score = 0;
                  answered = false;
                  selectedAnswer = null;
                });
              },
              child: const Text("Retry"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: const Text("Done"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[currentQuestion];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color(0xFFB71C1C),
        title: const Text("NCERT MCQs"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          Text(
            widget.chapter,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            "Question ${currentQuestion + 1} of ${questions.length}",
            style: const TextStyle(
              color: Colors.white54,
            ),
          ),

          const SizedBox(height: 20),

          LinearProgressIndicator(
            value: (currentQuestion + 1) / questions.length,
            backgroundColor: Colors.white12,
            color: Colors.redAccent,
          ),

          const SizedBox(height: 25),

          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFF19191D),
              borderRadius: BorderRadius.circular(22),
            ),
            child: Text(
              question.question,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 20),

          ...List.generate(
            question.options.length,
            (index) => _optionButton(
              index,
              question.options[index],
              question.answer,
            ),
          ),

          if (answered) ...[
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: const Color(0xFF18181B),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Text(
                question.explanation,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
            ),
          ],

          if (answered)
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: ElevatedButton(
                onPressed: _nextQuestion,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(16),
                ),
                child: Text(
                  currentQuestion == questions.length - 1
                      ? "See Result"
                      : "Next Question",
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _optionButton(
    int index,
    String text,
    int correctAnswer,
  ) {
    Color color = const Color(0xFF1B1B1F);

    if (answered) {
      if (index == correctAnswer) {
        color = Colors.green.shade800;
      } else if (index == selectedAnswer) {
        color = Colors.red.shade800;
      }
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () => _selectAnswer(index),
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white12,
                  child: Text(
                    String.fromCharCode(65 + index),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Text(
                    text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class McqQuestion {
  final String question;
  final List<String> options;
  final int answer;
  final String explanation;

  McqQuestion({
    required this.question,
    required this.options,
    required this.answer,
    required this.explanation,
  });
}
