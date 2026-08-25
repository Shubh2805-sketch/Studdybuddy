import 'package:flutter/material.dart';
import 'subject_screen.dart';
import 'chapter_screen.dart';

class RevisionScreen extends StatelessWidget {
  const RevisionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const subjects = [
      'Physics',
      'Chemistry',
      'Maths',
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF080B14),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D1220),
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Revision',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(
          18,
          20,
          18,
          30,
        ),
        children: [
          const Text(
            'Quick Revision',
            style: TextStyle(
              color: Colors.white,
              fontSize: 29,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            'Choose a subject and open any chapter.',
            style: TextStyle(
              color: Colors.white54,
              fontSize: 15,
            ),
          ),

          const SizedBox(height: 24),

          ...subjects.map(
            (subject) {
              return _subjectCard(
                context,
                subject,
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _subjectCard(
    BuildContext context,
    String subject,
  ) {
    IconData icon;

    if (subject == 'Physics') {
      icon = Icons.bolt_rounded;
    } else if (subject == 'Chemistry') {
      icon = Icons.science_rounded;
    } else {
      icon = Icons.calculate_rounded;
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF151C2C),
            Color(0xFF101521),
          ],
        ),
        borderRadius: BorderRadius.circular(21),
        border: Border.all(
          color: const Color(0xFF8B5CF6)
              .withOpacity(0.3),
        ),
      ),
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 9,
        ),
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0xFF8B5CF6)
                .withOpacity(0.14),
            borderRadius:
                BorderRadius.circular(14),
          ),
          child: Icon(
            icon,
            color: const Color(0xFFA78BFA),
          ),
        ),
        title: Text(
          '$subject Revision',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: const Text(
          'View chapters',
          style: TextStyle(
            color: Colors.white54,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.white38,
          size: 17,
        ),
        onTap: () {
          final chapters =
              SubjectScreen(
            subject: subject,
          ).getChapters();

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) =>
                  RevisionChapterScreen(
                subject: subject,
                chapters: chapters,
              ),
            ),
          );
        },
      ),
    );
  }
}

class RevisionChapterScreen extends StatelessWidget {
  final String subject;
  final List<String> chapters;

  const RevisionChapterScreen({
    super.key,
    required this.subject,
    required this.chapters,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF080B14),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D1220),
        foregroundColor: Colors.white,
        title: Text(
          '$subject Revision',
        ),
      ),
      body: chapters.isEmpty
          ? const Center(
              child: Text(
                'No chapters available.',
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(18),
              itemCount: chapters.length,
              itemBuilder:
                  (context, index) {
                final chapter =
                    chapters[index];

                return Container(
                  margin:
                      const EdgeInsets.only(
                    bottom: 12,
                  ),
                  decoration:
                      BoxDecoration(
                    color:
                        const Color(0xFF121827),
                    borderRadius:
                        BorderRadius.circular(
                      18,
                    ),
                    border: Border.all(
                      color:
                          const Color(0xFF263149),
                    ),
                  ),
                  child: ListTile(
                    contentPadding:
                        const EdgeInsets
                            .symmetric(
                      horizontal: 17,
                      vertical: 5,
                    ),
                    leading: CircleAvatar(
                      backgroundColor:
                          const Color(
                        0xFF8B5CF6,
                      ).withOpacity(0.15),
                      child: Text(
                        '${index + 1}',
                        style:
                            const TextStyle(
                          color:
                              Color(0xFFA78BFA),
                          fontWeight:
                              FontWeight.bold,
                        ),
                      ),
                    ),
                    title: Text(
                      chapter,
                      style:
                          const TextStyle(
                        color: Colors.white,
                        fontWeight:
                            FontWeight.w600,
                      ),
                    ),
                    trailing:
                        const Icon(
                      Icons
                          .arrow_forward_ios_rounded,
                      color:
                          Colors.white38,
                      size: 16,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              ChapterScreen(
                            subject: subject,
                            chapter: chapter,
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}
