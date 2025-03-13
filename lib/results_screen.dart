import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import "package:quiz_app/questions_summary/questions_summary.dart";
import "package:google_fonts/google_fonts.dart";

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.chosenAnswers, this.onRestart, {super.key});

  final void Function() onRestart;
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

    return summaryData;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = summaryData.length;
    final numTotalCorrectAnswers = summaryData.where((data) {
      return data["correct_answer"] == data["user_answered"];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "You answered $numTotalCorrectAnswers out of $numTotalQuestions questions correctly!",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 32),
              QuestionsSummary(summaryData),
              SizedBox(height: 32),
              TextButton.icon(
                onPressed: onRestart,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(
                  Icons.refresh,
                  color: Colors.white,
                ),
                label: Text("Restart Quiz!"),
              )
            ],
          )),
    );
  }
}
