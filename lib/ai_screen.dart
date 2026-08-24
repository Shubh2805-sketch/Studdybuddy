import 'package:flutter/material.dart';
import 'gemini_service.dart';

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
  final TextEditingController questionController =
      TextEditingController();

  String answer = '';
  bool loading = false;

  Future<void> askAI() async {
    final question = questionController.text.trim();

    if (question.isEmpty) {
      setState(() {
        answer = 'Please type your question first.';
      });
      return;
    }

    FocusScope.of(context).unfocus();

    setState(() {
      loading = true;
      answer = '';
    });

    final result = await GeminiService.askQuestion(
      subject: widget.subject,
      chapter: widget.chapter,
      question: question,
    );

    if (!mounted) return;

    setState(() {
      loading = false;
      answer = result;
    });
  }

  @override
  void dispose() {
    questionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: const Color(0xFFB71C1C),
        foregroundColor: Colors.white,
        title: const Text('Ask AI Doubt'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [

          Text(
            widget.chapter,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            widget.subject,
            style: const TextStyle(
              color: Colors.white54,
              fontSize: 15,
            ),
          ),

          const SizedBox(height: 20),

          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: const Color(0xFF19191D),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'Ask StudyBuddy anything about this chapter.',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
          ),

          const SizedBox(height: 18),

          TextField(
            controller: questionController,
            minLines: 5,
            maxLines: 10,
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              hintText:
                  'Example:\nWhy is benzaldehyde less reactive than propenal?',
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
                        color: Colors.white,
                        strokeWidth: 2,
                      ),
                    )
                  : const Icon(Icons.smart_toy_rounded),

              label: Text(
                loading
                    ? 'StudyBuddy is thinking...'
                    : 'Ask StudyBuddy',
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
                color: const Color(0xFF19191D),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.redAccent.withOpacity(0.6),
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
