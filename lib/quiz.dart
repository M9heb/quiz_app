import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import "package:quiz_app/start_screen.dart";

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String activeScreen = "start-screen";

  // Widget activeScreen?;
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 188, 108, 37),
                Color.fromARGB(255, 221, 161, 94)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: (activeScreen == "start-screen")
              ? StartScreen(switchScreen)
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}
