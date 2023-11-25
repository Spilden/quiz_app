import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {Key? key}) : super(key: key);

  final Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Color.fromARGB(136, 39, 225, 206),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Learn Flutter The Fun Way!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 39, 225, 206),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: const BorderSide(
                color: Color.fromARGB(255, 39, 225, 206),
              ),
            ),
            icon: const Icon(Icons.start),
            label: const Text('Start Quiz!'),
          ),
        ],
      ),
    );
  }
}
