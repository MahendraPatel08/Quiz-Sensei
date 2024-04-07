import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            height: 300,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          const SizedBox(height: 90),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              fontSize: 24,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          const SizedBox(height: 40),
          FilledButton(
            onPressed: () {
              startQuiz();
            },
            style: FilledButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 0, 0, 0),
              shape: const RoundedRectangleBorder(
                side: BorderSide(color: Colors.black26),
                borderRadius: BorderRadius.all(
                  Radius.circular(7),
                ),
              ),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.arrow_right_alt_rounded,
                  size: 25,
                  color: Color.fromARGB(200, 255, 255, 255),
                ),
                SizedBox(width: 5),
                Text(
                  'Start quiz',
                  style: TextStyle(
                    color: Color.fromARGB(200, 255, 255, 255),
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
