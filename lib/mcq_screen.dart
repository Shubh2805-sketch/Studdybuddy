import 'package:flutter/material.dart';
import 'data/mcq_data.dart';
import 'user_stats.dart';

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
  late List<McqItem> questions;

  int currentIndex = 0;
  int score = 0;
  int? selectedIndex;
  bool answered = false;

  @override
  void initState() {
    super.initState();

    questions =
        studyBuddyMcqs[widget.subject]?[widget.chapter] ??
            <McqItem>[];
  }

  void selectAnswer(int index) {
    if (answered) return;

    final question = questions[currentIndex];
    final correct = index == question.correctIndex;

    setState(() {
      selectedIndex = index;
      answered = true;

      if (correct) {
        score++;
      }
    });

    UserStats.recordMcqAnswer(correct);
  }

  void nextQuestion() {
    if (currentIndex >= questions.length - 1) {
      showResult();
      return;
    }

    setState(() {
      currentIndex++;
      selectedIndex = null;
      answered = false;
    });
  }

  void showResult() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        final percentage = questions.isEmpty
            ? 0
            : ((score / questions.length) * 100)
                .round();

        return AlertDialog(
          backgroundColor: const Color(0xFF151C2C),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
          title: const Text(
            'Quiz Complete 🎉',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text(
            'Score: $score/${questions.length}\n'
            'Accuracy: $percentage%',
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 18,
              height: 1.5,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);

                setState(() {
                  currentIndex = 0;
                  score = 0;
                  selectedIndex = null;
                  answered = false;
                });
              },
              child: const Text('Retry'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: const Text('Done'),
            ),
          ],
        );
      },
    );
  }

  Color optionColor(
    int index,
    McqItem question,
  ) {
    if (!answered) {
      return const Color(0xFF151C2C);
    }

    if (index == question.correctIndex) {
      return const Color(0xFF14532D);
    }

    if (index == selectedIndex) {
      return const Color(0xFF7F1D1D);
    }

    return const Color(0xFF151C2C);
  }

  @override
  Widget build(BuildContext context) {
    if (questions.isEmpty) {
      return Scaffold(
        backgroundColor: const Color(0xFF080B14),
        appBar: AppBar(
          backgroundColor: const Color(0xFF0D1220),
          foregroundColor: Colors.white,
          title: const Text('MCQs'),
        ),
        body: const Center(
          child: Text(
            'No MCQs available for this chapter.',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 17,
            ),
          ),
        ),
      );
    }

    final question = questions[currentIndex];

    return Scaffold(
      backgroundColor: const Color(0xFF080B14),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D1220),
        foregroundColor: Colors.white,
        title: const Text(
          'Chapter MCQs',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(
          18,
          20,
          18,
          35,
        ),
        children: [
          Text(
            widget.chapter,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 7),

          Text(
            '${widget.subject} • '
            'Question ${currentIndex + 1} of '
            '${questions.length}',
            style: const TextStyle(
              color: Colors.white54,
              fontSize: 15,
            ),
          ),

          const SizedBox(height: 20),

          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value:
                  (currentIndex + 1) / questions.length,
              minHeight: 7,
              backgroundColor: Colors.white12,
              color: const Color(0xFF8B5CF6),
            ),
          ),

          const SizedBox(height: 24),

          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF171D31),
                  Color(0xFF101521),
                ],
              ),
              borderRadius:
                  BorderRadius.circular(22),
              border: Border.all(
                color: const Color(0xFF8B5CF6)
                    .withOpacity(0.35),
              ),
            ),
            child: Text(
              question.question,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                height: 1.5,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 20),

          ...List.generate(
            question.options.length,
            (index) {
              return Container(
                margin:
                    const EdgeInsets.only(bottom: 12),
                child: Material(
                  color: optionColor(
                    index,
                    question,
                  ),
                  borderRadius:
                      BorderRadius.circular(17),
                  child: InkWell(
                    borderRadius:
                        BorderRadius.circular(17),
                    onTap: () {
                      selectAnswer(index);
                    },
                    child: Padding(
                      padding:
                          const EdgeInsets.all(17),
                      child: Row(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor:
                                Colors.white12,
                            child: Text(
                              String.fromCharCode(
                                65 + index,
                              ),
                              style:
                                  const TextStyle(
                                color: Colors.white,
                                fontWeight:
                                    FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Text(
                              question
                                  .options[index],
                              style:
                                  const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                height: 1.4,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),

          if (answered) ...[
            const SizedBox(height: 4),

            Container(
              padding: const EdgeInsets.all(17),
              decoration: BoxDecoration(
                color: const Color(0xFF0F172A),
                borderRadius:
                    BorderRadius.circular(17),
                border: Border.all(
                  color: const Color(0xFF263149),
                ),
              ),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Explanation',
                    style: TextStyle(
                      color: Color(0xFFA78BFA),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    question.explanation,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 18),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: nextQuestion,
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color(0xFF8B5CF6),
                  foregroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  shape:
                      RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(15),
                  ),
                ),
                child: Text(
                  currentIndex ==
                          questions.length - 1
                      ? 'See Result'
                      : 'Next Question',
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
