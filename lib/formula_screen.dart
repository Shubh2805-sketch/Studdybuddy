import 'package:flutter/material.dart';
import 'formula_data.dart';

class FormulaScreen extends StatelessWidget {
  final String subject;
  final String chapter;

  const FormulaScreen({
    super.key,
    required this.subject,
    required this.chapter,
  });

  List<String> get formulas {
    // First try exact match
    final subjectData = studyBuddyFormulas[subject];

    if (subjectData == null) {
      return [];
    }

    final exactMatch = subjectData[chapter];

    if (exactMatch != null) {
      return exactMatch;
    }

    // Fallback: case-insensitive chapter matching
    for (final entry in subjectData.entries) {
      if (entry.key.toLowerCase().trim() ==
          chapter.toLowerCase().trim()) {
        return entry.value;
      }
    }

    // If no chapter exists in the data
    return [];
  }

  @override
  Widget build(BuildContext context) {
    final chapterFormulas = formulas;

    return Scaffold(
      backgroundColor: const Color(0xFF090A0F),

      appBar: AppBar(
        backgroundColor: const Color(0xFF12141C),
        elevation: 0,
        foregroundColor: Colors.white,

        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        title: const Text(
          "Formula Sheet",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SafeArea(
        child: chapterFormulas.isEmpty
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.menu_book_outlined,
                        size: 64,
                        color: Colors.white.withOpacity(0.35),
                      ),

                      const SizedBox(height: 20),

                      const Text(
                        "No formulas available",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Text(
                        chapter,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.55),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : ListView(
                padding: const EdgeInsets.fromLTRB(
                  18,
                  24,
                  18,
                  30,
                ),

                children: [
                  // Chapter title
                  Text(
                    chapter,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      height: 1.2,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    "$subject • ${chapterFormulas.length} formulas",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.55),
                      fontSize: 15,
                    ),
                  ),

                  const SizedBox(height: 24),

                  ...List.generate(
                    chapterFormulas.length,
                    (index) {
                      final formula = chapterFormulas[index];

                      return Container(
                        margin: const EdgeInsets.only(bottom: 14),

                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 22,
                        ),

                        decoration: BoxDecoration(
                          color: const Color(0xFF171922),
                          borderRadius: BorderRadius.circular(20),

                          border: Border.all(
                            color: const Color(0xFF8E7CFF)
                                .withOpacity(0.25),
                          ),

                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 12,
                              offset: const Offset(0, 5),
                            ),
                          ],
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
                                color: const Color(0xFF8E7CFF)
                                    .withOpacity(0.15),
                                borderRadius:
                                    BorderRadius.circular(10),
                              ),

                              child: Text(
                                "${index + 1}",
                                style: const TextStyle(
                                  color: Color(0xFFB8ACFF),
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
                                  fontWeight: FontWeight.w500,
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
