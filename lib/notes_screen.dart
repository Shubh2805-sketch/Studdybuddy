import 'package:flutter/material.dart';

class NotesScreen extends StatelessWidget {
  final String subject;
  final String chapter;

  const NotesScreen({
    super.key,
    required this.subject,
    required this.chapter,
  });

  List<NoteSection> _getNotes() {
    if (subject == 'Physics') {
      return [
        NoteSection(
          '🎯 Chapter Overview',
          'Understand the concept first, then learn the formulas and practise numerical questions.',
        ),
        NoteSection(
          '⚡ Key Concepts',
          'Electric field is the force experienced by a unit positive test charge.',
        ),
        NoteSection(
          '📌 Important Formula',
          'E = F/q\n\nFor a point charge:\nE = kq/r²',
        ),
        NoteSection(
          '🔋 Electric Potential',
          'Electric potential is the work done per unit positive test charge in bringing it from infinity to a point.\n\nV = W/q\n\nFor a point charge:\nV = kq/r',
        ),
        NoteSection(
          '🔌 Capacitance',
          'Capacitance is the charge stored per unit potential difference.\n\nC = Q/V\n\nFor a parallel plate capacitor in vacuum:\nC = ε₀A/d',
        ),
        NoteSection(
          '🧠 Exam Tip',
          'In numerical questions, always write the formula first, substitute the values with units, and write the final answer with the correct SI unit.',
        ),
      ];
    }

    if (subject == 'Chemistry') {
      return [
        NoteSection(
          '🎯 Chapter Overview',
          'Focus on definitions, reaction mechanisms, important reagents, named reactions and NCERT exceptions.',
        ),
        NoteSection(
          '⚗️ Carbonyl Compounds',
          'The carbonyl carbon is electrophilic because oxygen is more electronegative than carbon.',
        ),
        NoteSection(
          '📌 Aldehydes vs Ketones',
          'Aldehydes are generally more reactive towards nucleophilic addition than ketones because they have less steric hindrance and fewer electron-releasing alkyl groups.',
        ),
        NoteSection(
          '🧪 Benzaldehyde',
          'Benzaldehyde is less reactive than propenal because conjugation with the benzene ring delocalises electron density and reduces the electrophilic character of the carbonyl carbon.',
        ),
        NoteSection(
          '🔥 Oxidation',
          'Aldehydes can generally be oxidised to corresponding carboxylic acids.',
        ),
        NoteSection(
          '🧠 Exam Tip',
          'For organic chemistry, learn the reagent, reaction condition, product and reason together rather than memorising the product alone.',
        ),
      ];
    }

    return [
      NoteSection(
        '🎯 Chapter Overview',
        'Understand the definition, identify the mathematical operation involved and then practise standard NCERT examples.',
      ),
      NoteSection(
        '📌 Derivative',
        'A derivative represents the instantaneous rate of change of a quantity with respect to another quantity.',
      ),
      NoteSection(
        '∫ Important Formula',
        'd/dx (xⁿ) = nxⁿ⁻¹\n\n∫xⁿ dx = xⁿ⁺¹/(n+1) + C, for n ≠ -1',
      ),
      NoteSection(
        '📈 Continuity',
        'A function f(x) is continuous at x = a when:\n\nlim x→a f(x) = f(a)',
      ),
      NoteSection(
        '🧠 Problem-Solving Method',
        'First identify what is given. Then identify what is required. Select the relevant formula or theorem and solve step by step.',
      ),
      NoteSection(
        '⭐ Exam Tip',
        'Do not skip intermediate steps in board examinations. Clear mathematical working can help you secure method marks.',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final sections = _getNotes();

    return Scaffold(
      backgroundColor: const Color(0xFF08090C),
      appBar: AppBar(
        title: const Text(
          'Quick Notes',
          style: TextStyle(
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(18, 18, 18, 30),
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF5B0A18),
                    Color(0xFF19080D),
                  ],
                ),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: const Color(0xFF8E2638),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'QUICK REVISION',
                    style: TextStyle(
                      color: Color(0xFFFF8793),
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.5,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    chapter,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '$subject • CBSE Class 12',
                    style: const TextStyle(
                      color: Colors.white60,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            ...sections.map(
              (section) => _noteCard(section),
            ),

            const SizedBox(height: 8),

            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: const Color(0xFF15171D),
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: const Color(0xFF30252A),
                ),
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.lightbulb_rounded,
                    color: Color(0xFFFFC857),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Active Recall: close the notes and explain the main concept without looking. Then attempt an MCQ.',
                      style: TextStyle(
                        color: Colors.white70,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _noteCard(NoteSection section) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFF15171D),
        borderRadius: BorderRadius.circular(19),
        border: Border.all(
          color: const Color(0xFF30252A),
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x44000000),
            blurRadius: 14,
            offset: Offset(0, 7),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            section.title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            section.content,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.white70,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}

class NoteSection {
  final String title;
  final String content;

  const NoteSection(
    this.title,
    this.content,
  );
}
