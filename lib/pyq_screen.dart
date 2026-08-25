import 'package:flutter/material.dart';
import 'data/pyq_data.dart';

class PyqScreen extends StatelessWidget {
  final String subject;
  final String chapter;

  const PyqScreen({
    super.key,
    required this.subject,
    required this.chapter,
  });

  @override
  Widget build(BuildContext context) {
    final List<PyqItem> questions =
        studyBuddyPyqs[subject]?[chapter] ?? <PyqItem>[];

    return Scaffold(
      backgroundColor: const Color(0xFF080B14),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D1220),
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Previous Year Questions',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: questions.isEmpty
          ? _emptyState()
          : ListView(
              padding: const EdgeInsets.fromLTRB(
                18,
                20,
                18,
                35,
              ),
              children: [
                Text(
                  chapter,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 7),

                Text(
                  subject,
                  style: const TextStyle(
                    color: Colors.white54,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 18),

                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF171D31),
                        Color(0xFF101521),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: const Color(0xFF8B5CF6)
                          .withOpacity(0.35),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: const Color(0xFF8B5CF6)
                              .withOpacity(0.15),
                          borderRadius:
                              BorderRadius.circular(14),
                        ),
                        child: const Icon(
                          Icons.history_edu_rounded,
                          color: Color(0xFFA78BFA),
                          size: 27,
                        ),
                      ),
                      const SizedBox(width: 14),
                      Expanded(
                        child: Text(
                          '${questions.length} questions available',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                ...List.generate(
                  questions.length,
                  (index) => _QuestionCard(
                    number: index + 1,
                    question: questions[index].question,
                    answer: questions[index].answer,
                  ),
                ),
              ],
            ),
    );
  }

  Widget _emptyState() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.quiz_outlined,
              color: Colors.white30,
              size: 70,
            ),
            SizedBox(height: 18),
            Text(
              'No questions available',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'This chapter does not have PYQs in the database yet.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white54,
                fontSize: 15,
              ),
            ),
          ],
        ),
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
  State<_QuestionCard> createState() =>
      _QuestionCardState();
}

class _QuestionCardState extends State<_QuestionCard> {
  bool showAnswer = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(19),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF151C2C),
            Color(0xFF101521),
          ],
        ),
        borderRadius: BorderRadius.circular(21),
        border: Border.all(
          color: const Color(0xFF8B5CF6)
              .withOpacity(0.30),
        ),
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF8B5CF6)
                      .withOpacity(0.14),
                  borderRadius:
                      BorderRadius.circular(9),
                ),
                child: Text(
                  'PYQ ${widget.number}',
                  style: const TextStyle(
                    color: Color(0xFFA78BFA),
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 13),

          Text(
            widget.question,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              height: 1.5,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 16),

          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: () {
                setState(() {
                  showAnswer = !showAnswer;
                });
              },
              icon: Icon(
                showAnswer
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
              ),
              label: Text(
                showAnswer
                    ? 'Hide Answer'
                    : 'Show Answer',
              ),
              style: OutlinedButton.styleFrom(
                foregroundColor:
                    const Color(0xFF22D3EE),
                side: const BorderSide(
                  color: Color(0xFF334155),
                ),
                padding:
                    const EdgeInsets.symmetric(
                  vertical: 13,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(13),
                ),
              ),
            ),
          ),

          if (showAnswer) ...[
            const SizedBox(height: 14),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF0B1020),
                borderRadius:
                    BorderRadius.circular(15),
                border: Border.all(
                  color: const Color(0xFF263149),
                ),
              ),
              child: Text(
                widget.answer,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  height: 1.55,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
