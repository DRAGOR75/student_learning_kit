import 'package:flutter/material.dart';

import 'package:student_learning_kit/models/questions_science.dart';
import 'package:student_learning_kit/pages/quiz_result_screen.dart';
import 'package:student_learning_kit/components/answer_card.dart';
import 'package:student_learning_kit/components/next_button.dart';

class QuizScreenS extends StatefulWidget {
  const QuizScreenS({super.key});

  @override
  State<QuizScreenS> createState() => _QuizScreenStateS();
}

class _QuizScreenStateS extends State<QuizScreenS> {
  int? selectedAnswerIndex;
  int questionIndex = 0;
  int score = 0;

  void pickAnswer(int value) {
    selectedAnswerIndex = value;
    final question = questionsS[questionIndex];
    if (selectedAnswerIndex == question.correctAnswerIndexS) {
      score++;
    }
    setState(() {});
  }

  void goToNextQuestion() {
    if (questionIndex < questionsS.length - 1) {
      questionIndex++;
      selectedAnswerIndex = null;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final question = questionsS[questionIndex];
    bool isLastQuestion = questionIndex == questionsS.length - 1;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social Science'),
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              question.questionS,
              style: const TextStyle(
                fontSize: 21,
              ),
              textAlign: TextAlign.center,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: question.optionsS.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: selectedAnswerIndex == null
                      ? () => pickAnswer(index)
                      : null,
                  child: AnswerCard(
                    currentIndex: index,
                    question: question.optionsS[index],
                    isSelected: selectedAnswerIndex == index,
                    selectedAnswerIndex: selectedAnswerIndex,
                    correctAnswerIndex: question.correctAnswerIndexS,
                  ),
                );
              },
            ),
            // Next Button
            isLastQuestion
                ? RectangularButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (_) => ResultScreen(
                      score: score,
                    ),
                  ),
                );
              },
              label: 'Finish',
            )
                : RectangularButton(
              onPressed:
              selectedAnswerIndex != null ? goToNextQuestion : null,
              label: 'Next',
            ),
          ],
        ),
      ),
    );
  }
}
