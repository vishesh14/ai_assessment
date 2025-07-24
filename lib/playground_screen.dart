import 'package:ai_assessment_app/layout_instruction.dart';
import 'package:ai_assessment_app/llm_prompt_handler.dart';
import 'package:ai_assessment_app/profile_ui.dart';
import 'package:flutter/material.dart';

class PlaygroundScreen extends StatefulWidget {
  const PlaygroundScreen({super.key});

  @override
  State<PlaygroundScreen> createState() => _PlaygroundScreenState();
}

class _PlaygroundScreenState extends State<PlaygroundScreen> {
  LayoutInstruction currentInstruction = LayoutInstruction.initial();
  final TextEditingController _controller = TextEditingController();

  _handlePrompt(String prompt) {
    final instruction = LlmPromptHandler.parsePrompt(prompt);
    setState(() {
      currentInstruction = instruction;
    });
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileUi(instruction: currentInstruction),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                    hintText: 'Enter a command....',
                    border: OutlineInputBorder()),
              ),
            ),
            IconButton(
                onPressed: () => _handlePrompt(_controller.text),
                icon: Icon(Icons.send))
          ],
        ),
      ),
    );
  }
}
