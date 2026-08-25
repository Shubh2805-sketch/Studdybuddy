import 'package:flutter/material.dart';
import 'user_stats.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  State<StatsScreen> createState() =>
      _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  int solved = 0;
  int correct = 0;
  int revisions = 0;
  bool loading = true;

  @override
  void initState() {
    super.initState();
    loadStats();
  }

  Future<void> loadStats() async {
    final solvedValue =
        await UserStats.getSolvedQuestions();

    final correctValue =
        await UserStats.getCorrectAnswers();

    final revisionValue =
        await UserStats.getRevisionSessions();

    if (!mounted) return;

    setState(() {
      solved = solvedValue;
      correct = correctValue;
      revisions = revisionValue;
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final int accuracy = solved == 0
        ? 0
        : ((correct / solved) * 100).round();

    return Scaffold(
      backgroundColor: const Color(0xFF080B14),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D1220),
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Your Stats',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: loading
          ? const Center(
              child: CircularProgressIndicator(
                color: Color(0xFF8B5CF6),
              ),
            )
          : RefreshIndicator(
              color: const Color(0xFF8B5CF6),
              onRefresh: loadStats,
              child: ListView(
                physics:
                    const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.fromLTRB(
                  18,
                  20,
                  18,
                  35,
                ),
                children: [
                  const Text(
                    'Your Progress',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Track your StudyBuddy activity.',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 15,
                    ),
                  ),

                  const SizedBox(height: 24),

                  _statCard(
                    icon: Icons.quiz_rounded,
                    title: 'Questions Solved',
                    value: '$solved',
                  ),

                  _statCard(
                    icon: Icons.check_circle_rounded,
                    title: 'Correct Answers',
                    value: '$correct',
                  ),

                  _statCard(
                    icon: Icons.percent_rounded,
                    title: 'Accuracy',
                    value: '$accuracy%',
                  ),

                  _statCard(
                    icon: Icons.refresh_rounded,
                    title: 'Revision Sessions',
                    value: '$revisions',
                  ),

                  const SizedBox(height: 10),

                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF241B4B),
                          Color(0xFF111827),
                        ],
                      ),
                      borderRadius:
                          BorderRadius.circular(22),
                      border: Border.all(
                        color: const Color(0xFF8B5CF6)
                            .withOpacity(0.35),
                      ),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.auto_awesome_rounded,
                          color: Color(0xFFA78BFA),
                          size: 30,
                        ),
                        SizedBox(width: 14),
                        Expanded(
                          child: Text(
                            'Keep practising. Your stats update automatically as you solve MCQs.',
                            style: TextStyle(
                              color: Colors.white70,
                              height: 1.45,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  OutlinedButton(
                    onPressed: () async {
                      await UserStats.reset();
                      await loadStats();
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor:
                          Colors.redAccent,
                      side: BorderSide(
                        color: Colors.redAccent
                            .withOpacity(0.5),
                      ),
                      padding:
                          const EdgeInsets.symmetric(
                        vertical: 14,
                      ),
                    ),
                    child: const Text(
                      'Reset Statistics',
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  Widget _statCard({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF121827),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFF263149),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: const Color(0xFF8B5CF6)
                  .withOpacity(0.14),
              borderRadius:
                  BorderRadius.circular(15),
            ),
            child: Icon(
              icon,
              color: const Color(0xFFA78BFA),
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
          ),

          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
