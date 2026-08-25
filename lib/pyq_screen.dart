import 'package:flutter/material.dart';
import 'data/pyq_data.dart';
import 'user_stats.dart';

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
    final questions =
        studyBuddyPyqs[subject]?[chapter] ?? const <PyqItem>[];

    return Scaffold(
      backgroundColor: const Color(0xFF080B14),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D1220),
        foregroundColor: Colors.white,
        title: const Text(
          'Previous Year Questions',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: questions.isEmpty
          ? const Center(
              child: Text(
                'No PYQs available for this chapter.',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 17,
                ),
              ),
            )
          : ListView(
              padding: const EdgeInsets.fromLTRB(
                18,
                20,
                18,
                30,
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
                  '$subject • $questions.length questions',
                  style: const TextStyle(
                    color: Colors.white54,
                    fontSize: 15,
                  ),
                ),

                const SizedBox(height: 20),

                ...List.generate(
                  questions.length,
                  (index) => _QuestionCard(
                    number: index + 1,
                    item: questions[index],
                  ),
                ),
              ],
            ),
    );
  }
}

class _QuestionCard extends StatefulWidget {
  final int number;
  final PyqItem item;

  const _QuestionCard({
    required this.number,
    required this.item,
  });

  @override
  State<_QuestionCard> createState() => _QuestionCardState();
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
          color: const Color(0xFF8B5CF6).withOpacity(0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'PYQ ${widget.number}',
            style: const TextStyle(
              color: Color(0xFFA78BFA),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          Text(
            widget.item.question,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              height: 1.5,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 15),

          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: () {
                setState(() {
                  showAnswer = !showAnswer;
                });

                if (!showAnswer) {
                  UserStats.recordRevision();
                }
              },
              icon: Icon(
                showAnswer
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
              ),
              label: Text(
                showAnswer ? 'Hide Answer' : 'Show Answer',
              ),
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color(0xFF22D3EE),
                side: const BorderSide(
                  color: Color(0xFF334155),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 13,
                ),
              ),
            ),
          ),

          if (showAnswer) ...[
            const SizedBox(height: 15),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF0B1020),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                widget.item.answer,
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
