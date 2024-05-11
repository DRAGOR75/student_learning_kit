import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import 'package:student_learning_kit/models/questions_english.dart';
import 'package:student_learning_kit/pages/quiz_result_screen.dart';
import 'package:student_learning_kit/components/answer_card.dart';
import 'package:student_learning_kit/components/next_button.dart';

class QuizScreenE extends StatefulWidget {
  const QuizScreenE({super.key});

  @override
  State<QuizScreenE> createState() => _QuizScreenStateE();
}

class _QuizScreenStateE extends State<QuizScreenE> {
  int? selectedAnswerIndex;
  int questionIndex = 0;
  int score = 0;

  void pickAnswer(int value) {
    selectedAnswerIndex = value;
    final question = questionsE[questionIndex];
    if (selectedAnswerIndex == question.correctAnswerIndexE) {
      score++;
    }
    setState(() {});
  }

  void goToNextQuestion() {
    if (questionIndex < questionsE.length - 1) {
      questionIndex++;
      selectedAnswerIndex = null;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final question = questionsE[questionIndex];
    bool isLastQuestion = questionIndex == questionsE.length - 1;
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
              question.questionE,
              style: const TextStyle(
                fontSize: 21,
              ),
              textAlign: TextAlign.center,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: question.optionsE.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: selectedAnswerIndex == null
                      ? () => pickAnswer(index)
                      : null,
                  child: AnswerCard(
                    currentIndex: index,
                    question: question.optionsE[index],
                    isSelected: selectedAnswerIndex == index,
                    selectedAnswerIndex: selectedAnswerIndex,
                    correctAnswerIndex: question.correctAnswerIndexE,
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
