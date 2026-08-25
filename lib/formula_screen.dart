import 'package:flutter/material.dart';
import 'data/formula_data.dart';

class FormulaScreen extends StatelessWidget {
  final String subject;
  final String chapter;

  const FormulaScreen({
    super.key,
    required this.subject,
    required this.chapter,
  });

  @override
  Widget build(BuildContext context) {
    final formulas =
        studyBuddyFormulas[subject]?[chapter] ?? <String>[];

    return Scaffold(
      backgroundColor: const Color(0xFF080B14),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D1220),
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Formula Sheet',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: formulas.isEmpty
          ? const Center(
              child: Text(
                'No formulas available for this chapter.',
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

                const SizedBox(height: 8),

                Text(
                  '$subject • Formula Reference',
                  style: const TextStyle(
                    color: Colors.white54,
                    fontSize: 15,
                  ),
                ),

                const SizedBox(height: 22),

                ...List.generate(
                  formulas.length,
                  (index) => Container(
                    margin: const EdgeInsets.only(bottom: 14),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF151C2C),
                          Color(0xFF101521),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color(0xFF8B5CF6)
                            .withOpacity(0.35),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 34,
                          height: 34,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xFF8B5CF6)
                                .withOpacity(0.15),
                            borderRadius:
                                BorderRadius.circular(10),
                          ),
                          child: Text(
                            '${index + 1}',
                            style: const TextStyle(
                              color: Color(0xFFA78BFA),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 14),
                        Expanded(
                          child: Text(
                            formulas[index],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              height: 1.45,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
