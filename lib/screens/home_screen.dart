import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            color: const Color.fromARGB(150, 255, 255, 255),
            width: 300,
          ),
          const SizedBox(height: 40),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 201, 153, 251),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: Colors.white,
                width: 0.5,
              ),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 20,
              ),
            ),
            label: const Text(
              'Start Quiz',
            ),
            icon: const Icon(Icons.arrow_right_alt),
          )
        ],
      ),
    );
  }
}
