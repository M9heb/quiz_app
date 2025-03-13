import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

import "package:quiz_app/questions_summary/question_identifier.dart";

class SummaryItem extends StatelessWidget {
  const SummaryItem(
    this.itemData, {
    super.key,
  });
  final Map<String, Object> itemData;
  @override
  Widget build(context) {
    final isCorrectAnswer =
        itemData["user_answered"] == itemData["correct_answer"];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(isCorrectAnswer,
              int.parse(itemData["question_index"].toString())),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(itemData['question'] as String,
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 4),
                Text(
                  itemData['user_answered'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 245, 253, 179),
                  ),
                ),
                Text(
                  itemData['correct_answer'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 181, 254, 213),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
