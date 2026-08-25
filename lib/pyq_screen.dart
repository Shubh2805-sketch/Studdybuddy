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
    final questions =
        studyBuddyPyqs[subject]?[chapter] ?? <PyqItem>[];

    return Scaffold(
      backgroundColor: const Color(0xFF090A0F),

      appBar: AppBar(
        backgroundColor: const Color(0xFF151722),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Previous Year Questions",
          style: TextStyle(
            color: Colors.white,
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(18, 24, 18, 30),
          children: [
            Text(
              chapter,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 29,
                fontWeight: FontWeight.w800,
                height: 1.15,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              subject,
              style: const TextStyle(
                color: Color(0xFF9EA4B3),
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 22),

            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 13,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFF171923),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: const Color(0xFF2A2D3A),
                ),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.quiz_rounded,
                    color: Color(0xFFFF4D67),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "${questions.length} questions",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 18),

            if (questions.isEmpty)
              Container(
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: const Color(0xFF171923),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Column(
                  children: [
                    Icon(
                      Icons.quiz_outlined,
                      color: Color(0xFF8E94A3),
                      size: 45,
                    ),
                    SizedBox(height: 12),
                    Text(
                      "No questions available",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

            ...List.generate(
              questions.length,
              (index) {
                return _QuestionCard(
                  number: index + 1,
                  question: questions[index].question,
                  answer: questions[index].answer,
                );
              },
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
  State<_QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<_QuestionCard> {
  bool showAnswer = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF171923),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFF303342),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 11,
                  vertical: 7,
                ),
                decoration: BoxDecoration(
                  color: const Color(0x22FF4D67),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "PYQ ${widget.number}",
                  style: const TextStyle(
                    color: Color(0xFFFF6478),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),

          Text(
            widget.question,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              height: 1.5,
              fontWeight: FontWeight.w500,
            ),
          ),

          const SizedBox(height: 16),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  showAnswer = !showAnswer;
                });
              },
              icon: Icon(
                showAnswer
                    ? Icons.visibility_off_rounded
                    : Icons.visibility_rounded,
              ),
              label: Text(
                showAnswer ? "Hide Answer" : "Show Answer",
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF4D67),
                foregroundColor: Colors.white,
                elevation: 0,
                padding: const EdgeInsets.symmetric(
                  vertical: 13,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
              ),
            ),
          ),

          if (showAnswer) ...[
            const SizedBox(height: 16),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF101118),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: const Color(0xFF303342),
                ),
              ),
              child: Text(
                widget.answer,
                style: const TextStyle(
                  color: Color(0xFFD5D8E0),
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
