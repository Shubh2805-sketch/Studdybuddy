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
    final subjectData = studyBuddyFormulas[subject];
    final formulas = subjectData?[chapter] ?? <String>[];

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
          "Formula Sheet",
          style: TextStyle(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(18, 24, 18, 30),
          children: [
            // Chapter title
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

            // Subject
            Text(
              subject,
              style: const TextStyle(
                color: Color(0xFF9EA4B3),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),

            const SizedBox(height: 24),

            // Formula count
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
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
                    Icons.functions_rounded,
                    color: Color(0xFFFF4D67),
                    size: 22,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "${formulas.length} formulas",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 18),

            if (formulas.isEmpty)
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: const Color(0xFF171923),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xFF2A2D3A),
                  ),
                ),
                child: const Column(
                  children: [
                    Icon(
                      Icons.menu_book_rounded,
                      color: Color(0xFF8E94A3),
                      size: 45,
                    ),
                    SizedBox(height: 12),
                    Text(
                      "No formulas available",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "Formula content for this chapter has not been added yet.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF9EA4B3),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),

            // Formula cards
            ...List.generate(
              formulas.length,
              (index) {
                final formula = formulas[index];

                return Container(
                  margin: const EdgeInsets.only(bottom: 14),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 22,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF171923),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: const Color(0xFF303342),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x33000000),
                        blurRadius: 12,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 34,
                        height: 34,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0x22FF4D67),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "${index + 1}",
                          style: const TextStyle(
                            color: Color(0xFFFF6478),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      const SizedBox(width: 14),

                      Expanded(
                        child: Text(
                          formula,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            height: 1.4,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
