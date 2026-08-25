import 'package:flutter/material.dart';
import 'package:studdybuddy/data/pyq_data.dart';

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
        studyBuddyPyqs[subject]?[chapter] ?? const <PyqItem>[];

    return Scaffold(
      backgroundColor: const Color(0xFF090A0F),

      appBar: AppBar(
        backgroundColor: const Color(0xFF151722),
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Previous Year Questions",
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ),

      body: questions.isEmpty
          ? Center(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.quiz_outlined,
                      color: Color(0xFF858B9D),
                      size: 65,
                    ),

                    const SizedBox(height: 20),

                    const Text(
                      "No questions available",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text(
                      "$chapter\n$subject",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xFF8E94A6),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            )
          : ListView(
              padding: const EdgeInsets.fromLTRB(
                20,
                24,
                20,
                35,
              ),
              children: [
                Text(
                  chapter,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    height: 1.15,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  subject,
                  style: const TextStyle(
                    color: Color(0xFF9DA3B4),
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 22),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 18,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF171923),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: const Color(0xFF2B2F3D),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: const Color(
                            0xFFFF4D78,
                          ).withOpacity(0.14),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Icon(
                          Icons.quiz_outlined,
                          color: Color(0xFFFF4D78),
                          size: 27,
                        ),
                      ),

                      const SizedBox(width: 14),

                      Text(
                        "${questions.length} questions",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 22),

                ...List.generate(
                  questions.length,
                  (index) {
                    return _QuestionCard(
                      number: index + 1,
                      item: questions[index],
                    );
                  },
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

      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: const Color(0xFF171923),
        borderRadius: BorderRadius.circular(22),

        border: Border.all(
          color: const Color(0xFF2B2F3D),
        ),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.18),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
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
                  color: const Color(
                    0xFFFF4D78,
                  ).withOpacity(0.12),

                  borderRadius: BorderRadius.circular(10),
                ),

                child: Text(
                  "Q${widget.number}",
                  style: const TextStyle(
                    color: Color(0xFFFF6F91),
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),

              const SizedBox(width: 10),

              const Text(
                "Exam Practice",
                style: TextStyle(
                  color: Color(0xFF8E94A6),
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Text(
            widget.item.question,
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
                size: 19,
              ),

              label: Text(
                showAnswer
                    ? "Hide Answer"
                    : "Show Answer",
              ),

              style: OutlinedButton.styleFrom(
                foregroundColor: const Color(0xFFFF6F91),

                side: const BorderSide(
                  color: Color(0xFF4B3140),
                ),

                padding: const EdgeInsets.symmetric(
                  vertical: 13,
                ),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
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
                color: const Color(0xFF101117),
                borderRadius: BorderRadius.circular(16),
              ),

              child: Text(
                widget.item.answer,
                style: const TextStyle(
                  color: Color(0xFFD6D9E2),
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
