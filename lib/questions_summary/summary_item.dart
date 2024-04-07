import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary/questions_identifiers.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.summaryData});

  final Map<String, Object> summaryData;
  @override
  Widget build(BuildContext context) {
    final isAnswerCurrect =
        summaryData['user_answer'] == summaryData['currect_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionsIdentifiers(
          isAnswerCurrect: isAnswerCurrect,
          questionIndex: summaryData['question_index'] as int,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                summaryData['question'] as String,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                summaryData['user_answer'] as String,
                style: const TextStyle(
                  backgroundColor: Color.fromARGB(255, 202, 171, 252),
                ),
              ),
              Text(
                summaryData['currect_answer'] as String,
                style: const TextStyle(
                  backgroundColor: Color.fromARGB(255, 181, 254, 246),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
