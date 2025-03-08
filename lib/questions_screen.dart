import "package:flutter/material.dart";
import "package:quiz_app/answer_button.dart";

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Question comes here ...",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 32),
            AnswerButton("Button 1", () {}),
            AnswerButton("Button 2", () {}),
            AnswerButton("Button 3", () {}),
            AnswerButton("Button 4", () {}),
          ],
        ));
  }
}
