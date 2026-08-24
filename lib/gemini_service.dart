import 'package:google_generative_ai/google_generative_ai.dart';

class GeminiService {
  static const String apiKey = String.fromEnvironment(
    'GEMINI_API_KEY',
    defaultValue: '',
  );

  static Future<String> askQuestion({
    required String subject,
    required String chapter,
    required String question,
  }) async {
    if (apiKey.isEmpty) {
      return '''
StudyBuddy AI is not configured yet.

Please add your GEMINI_API_KEY to GitHub Secrets and rebuild the APK.
''';
    }

    try {
      final model = GenerativeModel(
        model: 'gemini-1.5-flash',
        apiKey: apiKey,
      );

      final prompt = '''
You are StudyBuddy, an AI tutor for CBSE Class 12 students.

Subject: $subject
Chapter: $chapter

Student question:
$question

Instructions:

1. Answer accurately.
2. Stay at CBSE Class 12 / NCERT level.
3. Explain step by step.
4. For Physics, include formulas and units.
5. For Chemistry, explain reactions and concepts clearly.
6. For Maths, show the calculation steps.
7. If the student's assumption is wrong, correct it politely.
8. Do not make up information.
9. Keep the answer understandable for a school student.
''';

      final response = await model.generateContent(
        [
          Content.text(prompt),
        ],
      );

      return response.text?.trim() ??
          'StudyBuddy could not generate an answer.';
    } catch (e) {
      return '''
StudyBuddy could not connect to the AI service.

Please check:
• Internet connection
• Gemini API key
• GitHub Actions build configuration

Error:
$e
''';
    }
  }
}
