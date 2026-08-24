import 'package:flutter/material.dart';

class FormulaScreen extends StatelessWidget {
  final String subject;
  final String chapter;

  const FormulaScreen({
    super.key,
    required this.subject,
    required this.chapter,
  });

  List<String> get formulas {
    if (subject == "Physics") {
      if (chapter.contains("Potential") ||
          chapter.contains("Capacitance")) {
        return [
          "V = W/q",
          "V = kq/r",
          "E = -dV/dr",
          "C = Q/V",
          "C = ε₀A/d",
          "U = ½CV²",
          "U = ½QV",
          "U = Q²/2C",
          "Parallel: C = C₁ + C₂ + C₃ + ...",
          "Series: 1/C = 1/C₁ + 1/C₂ + 1/C₃ + ...",
        ];
      }

      return [
        "E = F/q",
        "F = kq₁q₂/r²",
        "V = kq/r",
        "P = VI",
        "V = IR",
      ];
    }

    if (subject == "Chemistry") {
      return [
        "Molarity = moles of solute / volume of solution",
        "M = n/V",
        "Ecell = Ecathode - Eanode",
        "ΔG = -nFE",
        "k = Ae^(-Ea/RT)",
      ];
    }

    return [
      "d(xⁿ)/dx = nxⁿ⁻¹",
      "∫xⁿ dx = xⁿ⁺¹/(n+1) + C",
      "sin²x + cos²x = 1",
      "d(sin x)/dx = cos x",
      "d(cos x)/dx = -sin x",
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color(0xFFB71C1C),
        title: const Text("Formula Sheet"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          Text(
            chapter,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          ...formulas.map(
            (formula) => Container(
              margin: const EdgeInsets.only(bottom: 14),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF19191D),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.redAccent.withOpacity(0.6),
                ),
              ),
              child: Text(
                formula,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
