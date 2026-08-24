import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class AiScreen extends StatefulWidget {
  final String subject;
  final String chapter;

  const AiScreen({
    super.key,
    required this.subject,
    required this.chapter,
  });

  @override
  State<AiScreen> createState() => _AiScreenState();
}

class _AiScreenState extends State<AiScreen> {
  final TextEditingController controller = TextEditingController();

  bool loading = false;
  String answer = "";

  Future<void> askAI() async {
    final question = controller.text.trim();

    if (question.isEmpty) {
      setState(() {
        answer = "Please type your question first.";
      });
      return;
    }

    const apiKey = String.fromEnvironment(
      'GEMINI_API_KEY',
      defaultValue: '',
    );

    if (apiKey.isEmpty) {
      setState(() {
        answer =
            "Gemini API key is not configured.\n\n"
            "Add GEMINI_API_KEY to the GitHub Actions build.";
      });
      return;
    }

    setState(() {
      loading = true;
      answer = "";
    });

    try {
      final model = GenerativeModel(
        model: 'gemini-1.5-flash',
        apiKey: apiKey,
      );

      final prompt = '''
You are StudyBuddy, an educational AI tutor.

Student level: CBSE Class 12
Subject: ${widget.subject}
Chapter: ${widget.chapter}

Answer the student's question clearly and accurately.

Rules:
- Follow CBSE/NCERT level where possible.
- Explain step by step.
- Do not unnecessarily use advanced university-level concepts.
- For numerical questions, show the formula and calculation.
- For chemistry, explain reactions clearly.
- For physics, include units.
- For mathematics, show the working.
- If the student's assumption is wrong, politely correct it.

Student question:
$question
''';

      final response = await model.generateContent([
        Content.text(prompt),
      ]);

      setState(() {
        answer = response.text?.trim() ??
            "I couldn't generate an answer. Please try again.";
      });
    } catch (e) {
      setState(() {
        answer =
            "Unable to contact StudyBuddy AI.\n\n"
            "Please check your internet connection and Gemini API configuration.";
      });
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color(0xFFB71C1C),
        title: const Text("Ask StudyBuddy AI"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          Text(
            widget.chapter,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            "Ask your doubt and get a step-by-step explanation.",
            style: TextStyle(
              color: Colors.white60,
              fontSize: 15,
            ),
          ),

          const SizedBox(height: 22),

          TextField(
            controller: controller,
            minLines: 5,
            maxLines: 10,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText:
                  "Example:\nWhy is benzaldehyde less reactive than propenal?",
              hintStyle: const TextStyle(
                color: Colors.white38,
              ),
              filled: true,
              fillColor: const Color(0xFF19191D),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
            ),
          ),

          const SizedBox(height: 15),

          SizedBox(
            height: 55,
            child: ElevatedButton.icon(
              onPressed: loading ? null : askAI,
              icon: loading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    )
                  : const Icon(Icons.send_rounded),
              label: Text(
                loading ? "Thinking..." : "Ask StudyBuddy",
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
          ),

          if (answer.isNotEmpty) ...[
            const SizedBox(height: 22),

            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF18181B),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.redAccent.withOpacity(0.5),
                ),
              ),
              child: Text(
                answer,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.6,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
