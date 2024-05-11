import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import 'package:student_learning_kit/models/questions_programing.dart';
import 'package:student_learning_kit/pages/quiz_result_screen.dart';
import 'package:student_learning_kit/components/answer_card.dart';
import 'package:student_learning_kit/components/next_button.dart';

class QuizScreenP extends StatefulWidget {
  const QuizScreenP({super.key});

  @override
  State<QuizScreenP> createState() => _QuizScreenStateP();
}

class _QuizScreenStateP extends State<QuizScreenP> {
  int? selectedAnswerIndex;
  int questionIndex = 0;
  int score = 0;

  void pickAnswer(int value) {
    selectedAnswerIndex = value;
    final question = questionsP[questionIndex];
    if (selectedAnswerIndex == question.correctAnswerIndexP) {
      score++;
    }
    setState(() {});
  }

  void goToNextQuestion() {
    if (questionIndex < questionsP.length - 1) {
      questionIndex++;
      selectedAnswerIndex = null;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final question = questionsP[questionIndex];
    bool isLastQuestion = questionIndex == questionsP.length - 1;
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
              question.questionP,
              style: const TextStyle(
                fontSize: 21,
              ),
              textAlign: TextAlign.center,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: question.optionsP.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: selectedAnswerIndex == null
                      ? () => pickAnswer(index)
                      : null,
                  child: AnswerCard(
                    currentIndex: index,
                    question: question.optionsP[index],
                    isSelected: selectedAnswerIndex == index,
                    selectedAnswerIndex: selectedAnswerIndex,
                    correctAnswerIndex: question.correctAnswerIndexP,
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