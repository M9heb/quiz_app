import "package:flutter/material.dart";

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(this.isCorrectAnswer, this.questionIndex,
      {super.key});
  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(context) {
    final questionNumber = questionIndex + 1;
    return Container(
        width: 32,
        height: 32,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: isCorrectAnswer
                ? const Color.fromARGB(255, 67, 136, 47)
                : const Color.fromARGB(255, 217, 55, 55),
            borderRadius: BorderRadius.circular(999)),
        child: Text(questionNumber.toString(),
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 234, 249, 229))));
  }
}
