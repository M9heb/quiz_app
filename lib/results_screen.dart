import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.chosenAnswers, {super.key});

  final List<String> chosenAnswers;

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
