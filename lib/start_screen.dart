import "package:flutter/material.dart";

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
                color: Color.fromARGB(217, 255, 255, 255), fontSize: 24),
          ),
          const SizedBox(height: 24),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 254, 250, 224),
              side: BorderSide(color: const Color.fromARGB(150, 255, 255, 255)),
            ),
            onPressed: () {},
            label: Text("Start the Quiz!"),
            icon: Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
            iconAlignment: IconAlignment.end,
          )
        ],
      ),
    );
  }
}
