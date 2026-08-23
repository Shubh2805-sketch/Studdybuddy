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
    final formulas = studyBuddyFormulas[subject]?[chapter] ?? [];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        title: const Text("Formula Sheet"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: formulas.length,
        itemBuilder: (_, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Colors.red.shade700),
            ),
            child: Text(
              formulas[index],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
    );
  }
}
