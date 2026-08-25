import 'package:google_generative_ai/google_generative_ai.dart';

class GeminiService {
  static const String apiKey =
      String.fromEnvironment(
    'GEMINI_API_KEY',
    defaultValue: '',
  );

  static Future<String> askQuestion({
    required String subject,
    required String chapter,
    required String question,
  }) async {
    if (apiKey.trim().isEmpty) {
      return '''
StudyBuddy AI is not configured.

The Gemini API key was not included in this APK.

Please check the GitHub Actions secret:

GEMINI_API_KEY
''';
    }

    try {
      final model = GenerativeModel(
        model: 'gemini-2.5-flash',
        apiKey: apiKey,
      );

      final prompt = '''
You are StudyBuddy, an expert AI tutor for CBSE Class 12 students.

Subject: $subject
Chapter: $chapter

Student question:
$question

Instructions:
1. Answer accurately.
2. Stay at CBSE Class 12 / NCERT level.
3. Explain step by step.
4. For Physics, include formulas and units where useful.
5. For Chemistry, explain reactions and concepts clearly.
6. For Maths, show calculation steps.
7. Correct incorrect assumptions politely.
8. Do not invent information.
9. Keep explanations understandable for a school student.
10. Focus on the selected chapter whenever possible.
''';

      final response =
          await model.generateContent(
        [
          Content.text(prompt),
        ],
      );

      final text =
          response.text?.trim();

      if (text == null || text.isEmpty) {
        return 'StudyBuddy could not generate an answer. Please try again.';
      }

      return text;
    } catch (e) {
      return '''
StudyBuddy could not connect to Gemini.

Please check:

• Internet connection
• Gemini API key
• GitHub Actions configuration

Technical error:
$e
''';
    }
  }
}
