import "package:flutter/material.dart";
import "package:quiz_app/answer_button.dart";
import "package:quiz_app/data/questions.dart";
import "package:google_fonts/google_fonts.dart";

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.onSelectAnswer, {super.key});

  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void nextQuestion(answer) {
    setState(() {
      widget.onSelectAnswer(answer);
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    var currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQuestion.question,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 241, 224, 198),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32),
              ...currentQuestion.getShuffledAnswers().map((answer) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AnswerButton(answer, () {
                      nextQuestion(answer);
                    }),
                    SizedBox(
                      height: 8,
                    )
                  ],
                );
              }),
            ],
          ),
        ));
  }
}
