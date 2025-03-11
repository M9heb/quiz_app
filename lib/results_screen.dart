import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/quiz_question.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.chosenAnswers, {super.key});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summaryData = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summaryData.add(
        {
          "question_index": i,
          "question": questions[i].question,
          "correct_answer": questions[i].answers[0],
          "user_answered": chosenAnswers[i]
        },
      );
    }
    ;
    return summaryData;
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("You answered x out of y questions correctly!"),
              SizedBox(height: 32),
              Text("Here should be the body"),
              SizedBox(height: 32),
              TextButton(
                onPressed: () {},
                child: Text("Restart Quiz!"),
              )
            ],
          )),
    );
  }
}
