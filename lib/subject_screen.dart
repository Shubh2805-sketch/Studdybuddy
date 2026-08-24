import 'package:flutter/material.dart';
import 'chapter_screen.dart';

class SubjectScreen extends StatelessWidget {
  final String subject;

  const SubjectScreen({
    super.key,
    required this.subject,
  });

  List<String> getChapters() {
    switch (subject) {
      case 'Physics':
        return [
          'Electric Charges and Fields',
          'Electrostatic Potential and Capacitance',
          'Current Electricity',
          'Moving Charges and Magnetism',
          'Magnetism and Matter',
          'Electromagnetic Induction',
          'Alternating Current',
          'Electromagnetic Waves',
          'Ray Optics and Optical Instruments',
          'Wave Optics',
          'Dual Nature of Radiation and Matter',
          'Atoms',
          'Nuclei',
          'Semiconductor Electronics',
        ];

      case 'Chemistry':
        return [
          'Solutions',
          'Electrochemistry',
          'Chemical Kinetics',
          'd and f Block Elements',
          'Coordination Compounds',
          'Haloalkanes and Haloarenes',
          'Alcohols, Phenols and Ethers',
          'Aldehydes, Ketones and Carboxylic Acids',
          'Amines',
          'Biomolecules',
          'Polymers',
          'Chemistry in Everyday Life',
        ];

      case 'Maths':
        return [
          'Relations and Functions',
          'Inverse Trigonometric Functions',
          'Matrices',
          'Determinants',
          'Continuity and Differentiability',
          'Application of Derivatives',
          'Integrals',
          'Application of Integrals',
          'Differential Equations',
          'Vector Algebra',
          'Three Dimensional Geometry',
          'Linear Programming',
          'Probability',
        ];

      default:
        return [];
    }
  }

  IconData getSubjectIcon() {
    switch (subject) {
      case 'Physics':
        return Icons.bolt_rounded;
      case 'Chemistry':
        return Icons.science_rounded;
      case 'Maths':
        return Icons.calculate_rounded;
      default:
        return Icons.menu_book_rounded;
    }
  }

  @override
  Widget build(BuildContext context) {
    final chapters = getChapters();

    return Scaffold(
      backgroundColor: const Color(0xFF08090C),
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              getSubjectIcon(),
              color: const Color(0xFFFF5367),
            ),
            const SizedBox(width: 10),
            Text(
              subject,
              style: const TextStyle(
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(18, 20, 18, 30),
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
              child: Row(
                children: [
                  Container(
                    width: 58,
                    height: 58,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFFE72C45),
                          Color(0xFF8B0018),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Icon(
                      getSubjectIcon(),
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          subject,
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '${chapters.length} chapters',
                          style: const TextStyle(
                            color: Colors.white60,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            const Text(
              'Chapters',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w800,
              ),
            ),

            const SizedBox(height: 12),

            ...List.generate(
              chapters.length,
              (index) {
                final chapter = chapters[index];

                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(19),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ChapterScreen(
                              subject: subject,
                              chapter: chapter,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 15,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF15171D),
                          borderRadius: BorderRadius.circular(19),
                          border: Border.all(
                            color: const Color(0xFF30252A),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 44,
                              height: 44,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFFE72C45),
                                    Color(0xFF8B0018),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: Text(
                                '${index + 1}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            const SizedBox(width: 14),
                            Expanded(
                              child: Text(
                                chapter,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 16,
                              color: Colors.white38,
                            ),
                          ],
                        ),
                      ),
                    ),
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
