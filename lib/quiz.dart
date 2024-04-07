import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

List<String> selectedAnswers = [];

class _QuizState extends State<Quiz> {
  var activeScreen = 'Start-Screen';
  void switchScreen() {
    setState(
      () {
        activeScreen = 'Question-Screen';
      },
    );
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'Result-Screen';
      });
    }
  }

  void resetQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'Question-Screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'Question-Screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'Result-Screen') {
      screenWidget = ResultScreen(
        choosenAnswer: selectedAnswers,
        onRestart: resetQuiz,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 0, 74, 97),
                Color.fromARGB(255, 0, 74, 97),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
