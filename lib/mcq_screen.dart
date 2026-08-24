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
  int? selectedAnswer;
  bool answered = false;

  List<McqQuestion> get questions {
    if (widget.subject == 'Physics') {
      return [
        McqQuestion(
          question: 'The SI unit of electric potential is:',
          options: ['Volt', 'Coulomb', 'Newton', 'Farad'],
          correctAnswer: 0,
          explanation: 'Electric potential is measured in volt (V).',
        ),
        McqQuestion(
          question: 'The capacitance of a capacitor is defined as:',
          options: [
            'Q/V',
            'V/Q',
            'IR',
            'F/q',
          ],
          correctAnswer: 0,
          explanation:
              'Capacitance is the charge stored per unit potential difference: C = Q/V.',
        ),
        McqQuestion(
          question: 'Energy stored in a capacitor is:',
          options: [
            '½CV²',
            'CV',
            'Q/V',
            'IR²',
          ],
          correctAnswer: 0,
          explanation:
              'The energy stored in a capacitor is U = ½CV².',
        ),
        McqQuestion(
          question: 'Ohm’s law is represented by:',
          options: [
            'V = IR',
            'V = I/R',
            'R = VI',
            'I = VR',
          ],
          correctAnswer: 0,
          explanation:
              'Ohm’s law states that V = IR under constant physical conditions.',
        ),
      ];
    }

    if (widget.subject == 'Chemistry') {
      return [
        McqQuestion(
          question: 'The functional group of an aldehyde is:',
          options: ['−CHO', '−COOH', '−OH', '−NH₂'],
          correctAnswer: 0,
          explanation:
              'An aldehyde contains the −CHO functional group.',
        ),
        McqQuestion(
          question: 'The formula of benzaldehyde is:',
          options: [
            'C₆H₅CHO',
            'C₆H₅OH',
            'C₆H₆',
            'CH₃CHO',
          ],
          correctAnswer: 0,
          explanation:
              'Benzaldehyde consists of a phenyl group attached to −CHO.',
        ),
        McqQuestion(
          question: 'Oxidation of an aldehyde generally produces:',
          options: [
            'Carboxylic acid',
            'Ether',
            'Amine',
            'Alkane',
          ],
          correctAnswer: 0,
          explanation:
              'Aldehydes are readily oxidised to corresponding carboxylic acids.',
        ),
        McqQuestion(
          question:
              'Why is benzaldehyde less reactive than propenal towards nucleophilic addition?',
          options: [
            'Resonance with benzene reduces carbonyl electrophilicity',
            'It contains no carbonyl group',
            'It is an alkane',
            'It contains an amino group',
          ],
          correctAnswer: 0,
          explanation:
              'Conjugation with the benzene ring delocalises electron density and reduces the electrophilic character of the carbonyl carbon.',
        ),
      ];
    }

    return [
      McqQuestion(
        question: 'The derivative of x² is:',
        options: ['2x', 'x', 'x²', '2'],
        correctAnswer: 0,
        explanation: 'Using the power rule, d(x²)/dx = 2x.',
      ),
      McqQuestion(
        question: 'The integral of 1 with respect to x is:',
        options: ['x + C', '1 + C', '0', 'x² + C'],
        correctAnswer: 0,
        explanation: 'The antiderivative of 1 is x + C.',
      ),
      McqQuestion(
        question: 'sin²x + cos²x is equal to:',
        options: ['1', '0', '2', 'x'],
        correctAnswer: 0,
        explanation:
            'This is the fundamental trigonometric identity sin²x + cos²x = 1.',
      ),
      McqQuestion(
        question: 'The derivative of sin x is:',
        options: ['cos x', '−cos x', 'sin x', '−sin x'],
        correctAnswer: 0,
        explanation:
            'The derivative of sin x with respect to x is cos x.',
      ),
    ];
  }

  void selectAnswer(int index) {
    if (answered) return;

    setState(() {
      selectedAnswer = index;
      answered = true;

      if (index == questions[currentQuestion].correctAnswer) {
        score++;
      }
    });
  }

  void nextQuestion() {
    if (currentQuestion < questions.length - 1) {
      setState(() {
        currentQuestion++;
        selectedAnswer = null;
        answered = false;
      });
    } else {
      _showResult();
    }
  }

  void restartQuiz() {
    setState(() {
      currentQuestion = 0;
      score = 0;
      selectedAnswer = null;
      answered = false;
    });
  }

  void _showResult() {
    final percentage =
        ((score / questions.length) * 100).round();

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF15171D),
          title: const Text(
            'Quiz Complete 🎉',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '$score / ${questions.length}',
                style: const TextStyle(
                  color: Color(0xFFFF5367),
                  fontSize: 42,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '$percentage%',
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                _resultMessage(percentage),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white70,
                  height: 1.5,
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                restartQuiz();
              },
              child: const Text(
                'Try Again',
                style: TextStyle(
                  color: Color(0xFFFF5367),
                ),
              ),
            ),
            FilledButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              style: FilledButton.styleFrom(
                backgroundColor: const Color(0xFFD51F39),
              ),
              child: const Text('Done'),
            ),
          ],
        );
      },
    );
  }

  String _resultMessage(int percentage) {
    if (percentage == 100) {
      return 'Excellent! You have mastered these questions.';
    }

    if (percentage >= 75) {
      return 'Very good. Review the mistakes once and try again.';
    }

    if (percentage >= 50) {
      return 'Good start. Revise the chapter and practise again.';
    }

    return 'Revise the key concepts first, then attempt the quiz again.';
  }

  Color _optionColor(int index) {
    if (!answered) {
      return const Color(0xFF15171D);
    }

    if (index == questions[currentQuestion].correctAnswer) {
      return const Color(0xFF145C3A);
    }

    if (index == selectedAnswer) {
      return const Color(0xFF7D1F2F);
    }

    return const Color(0xFF15171D);
  }

  IconData _optionIcon(int index) {
    if (!answered) {
      return Icons.radio_button_unchecked;
    }

    if (index == questions[currentQuestion].correctAnswer) {
      return Icons.check_circle;
    }

    if (index == selectedAnswer) {
      return Icons.cancel;
    }

    return Icons.radio_button_unchecked;
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[currentQuestion];
    final progress =
        (currentQuestion + 1) / questions.length;

    return Scaffold(
      backgroundColor: const Color(0xFF08090C),
      appBar: AppBar(
        title: const Text(
          'NCERT MCQs',
          style: TextStyle(
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(18, 18, 18, 30),
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF5B0A18),
                    Color(0xFF19080D),
                  ],
                ),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: const Color(0xFF8E2638),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'NCERT PRACTICE',
                    style: TextStyle(
                      color: Color(0xFFFF8793),
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.5,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.chapter,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '${currentQuestion + 1} of ${questions.length} questions',
                    style: const TextStyle(
                      color: Colors.white60,
                    ),
                  ),
                  const SizedBox(height: 15),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: LinearProgressIndicator(
                      value: progress,
                      minHeight: 8,
                      backgroundColor: Colors.white12,
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(
                        Color(0xFFFF5367),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF15171D),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color(0xFF30252A),
                ),
              ),
              child: Text(
                question.question,
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                  height: 1.5,
                ),
              ),
            ),

            const SizedBox(height: 16),

            ...List.generate(
              question.options.length,
              (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 11),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(17),
                    onTap: () => selectAnswer(index),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: _optionColor(index),
                        borderRadius: BorderRadius.circular(17),
                        border: Border.all(
                          color: index == selectedAnswer
                              ? const Color(0xFFFF5367)
                              : const Color(0xFF30252A),
                          width: 1.2,
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            _optionIcon(index),
                            color: answered &&
                                    index ==
                                        question.correctAnswer
                                ? Colors.greenAccent
                                : answered &&
                                        index == selectedAnswer
                                    ? Colors.redAccent
                                    : Colors.white38,
                          ),
                          const SizedBox(width: 13),
                          Expanded(
                            child: Text(
                              question.options[index],
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),

            if (answered) ...[
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: const Color(0xFF121418),
                  borderRadius: BorderRadius.circular(17),
                  border: Border.all(
                    color: const Color(0xFF3B3034),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      selectedAnswer ==
                              question.correctAnswer
                          ? Icons.check_circle
                          : Icons.info_outline,
                      color: selectedAnswer ==
                              question.correctAnswer
                          ? Colors.greenAccent
                          : Colors.orangeAccent,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        question.explanation,
                        style: const TextStyle(
                          color: Colors.white70,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: nextQuestion,
                  style: FilledButton.styleFrom(
                    backgroundColor:
                        const Color(0xFFD51F39),
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(14),
                    ),
                  ),
                  child: Text(
                    currentQuestion ==
                            questions.length - 1
                        ? 'See Result'
                        : 'Next Question',
                  ),
                ),
              ),
            ],

            const SizedBox(height: 18),

            Center(
              child: Text(
                'Score: $score',
                style: const TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class McqQuestion {
  final String question;
  final List<String> options;
  final int correctAnswer;
  final String explanation;

  const McqQuestion({
    required this.question,
    required this.options,
    required this.correctAnswer,
    required this.explanation,
  });
}
