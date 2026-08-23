import 'package:google_generative_ai/google_generative_ai.dart';

class GeminiService {
  static const String apiKey = "PASTE_YOUR_GEMINI_API_KEY_HERE";

  final model = GenerativeModel(
    model: "gemini-2.5-flash",
    apiKey: apiKey,
    systemInstruction: Content.system("""
You are StudyBuddy, an AI tutor for CBSE Class 12.
Always answer according to NCERT.
Give:
1. Simple explanation.
2. Step-by-step solution.
3. Important formula.
4. Common mistake.
5. One practice MCQ.
Use English unless the student asks for Hindi.
"""),
  );

  Future<String> ask(String question) async {
    final response = await model.generateContent([
      Content.text(question),
    ]);
    return response.text ?? "Sorry, I couldn't generate an answer.";
  }
}
