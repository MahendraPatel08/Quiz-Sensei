import 'package:flutter/material.dart';

class QuestionsIdentifiers extends StatelessWidget {
  const QuestionsIdentifiers(
      {super.key, required this.isAnswerCurrect, required this.questionIndex});

  final int questionIndex;
  final bool isAnswerCurrect;

  @override
  Widget build(BuildContext context) {
    final int questionNumber = questionIndex + 1;
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isAnswerCurrect ? Colors.green : Colors.red,
        shape: BoxShape.circle,
      ),
      child: Text(
        questionNumber.toString(),
        style:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
