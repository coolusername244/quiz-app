import 'package:flutter/material.dart';
import 'package:quiz_app/components/questions_summary.dart';

import 'package:quiz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'chosen_answer': chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['correct_answer'] == data['chosen_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 201, 153, 251),
                ),
              ),
              const SizedBox(height: 30),
              QuestionsSummary(summaryData: summaryData),
              const SizedBox(height: 30),
              OutlinedButton.icon(
                onPressed: onRestart,
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
                  'Restart Quiz!',
                ),
                icon: const Icon(Icons.refresh),
              )
            ],
          )),
    );
  }
}
