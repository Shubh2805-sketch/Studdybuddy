import 'package:shared_preferences/shared_preferences.dart';

class UserStats {
  static const String _solvedKey =
      'studybuddy_solved_questions';

  static const String _correctKey =
      'studybuddy_correct_answers';

  static const String _revisionKey =
      'studybuddy_revision_sessions';

  static Future<void> recordMcqAnswer(
    bool correct,
  ) async {
    final prefs =
        await SharedPreferences.getInstance();

    final solved =
        prefs.getInt(_solvedKey) ?? 0;

    final correctAnswers =
        prefs.getInt(_correctKey) ?? 0;

    await prefs.setInt(
      _solvedKey,
      solved + 1,
    );

    if (correct) {
      await prefs.setInt(
        _correctKey,
        correctAnswers + 1,
      );
    }
  }

  static Future<void> recordRevision() async {
    final prefs =
        await SharedPreferences.getInstance();

    final revisions =
        prefs.getInt(_revisionKey) ?? 0;

    await prefs.setInt(
      _revisionKey,
      revisions + 1,
    );
  }

  static Future<int> getSolvedQuestions() async {
    final prefs =
        await SharedPreferences.getInstance();

    return prefs.getInt(_solvedKey) ?? 0;
  }

  static Future<int> getCorrectAnswers() async {
    final prefs =
        await SharedPreferences.getInstance();

    return prefs.getInt(_correctKey) ?? 0;
  }

  static Future<int> getRevisionSessions() async {
    final prefs =
        await SharedPreferences.getInstance();

    return prefs.getInt(_revisionKey) ?? 0;
  }

  static Future<void> reset() async {
    final prefs =
        await SharedPreferences.getInstance();

    await prefs.remove(_solvedKey);
    await prefs.remove(_correctKey);
    await prefs.remove(_revisionKey);
  }
}
