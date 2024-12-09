import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: data['chosen_answer'] == data['correct_answer']
                          ? const Color.fromRGBO(145, 195, 243, 1)
                          : const Color.fromRGBO(237, 124, 241, 1),
                    ),
                    child: Center(
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            data['question'] as String,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            data['chosen_answer'] as String,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 201, 153, 251),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            data['correct_answer'] as String,
                            style: const TextStyle(
                              color: Color.fromRGBO(145, 195, 243, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
