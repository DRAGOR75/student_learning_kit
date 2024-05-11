import 'package:flutter/material.dart';

import 'package:student_learning_kit/models/questions_maths.dart';
import 'package:student_learning_kit/pages/quiz_result_screen.dart';
import 'package:student_learning_kit/components/answer_card.dart';
import 'package:student_learning_kit/components/next_button.dart';

class QuizScreenM extends StatefulWidget {
  const QuizScreenM({super.key});

  @override
  State<QuizScreenM> createState() => _QuizScreenStateM();
}

class _QuizScreenStateM extends State<QuizScreenM> {
  int? selectedAnswerIndex;
  int questionIndex = 0;
  int score = 0;

  void pickAnswer(int value) {
    selectedAnswerIndex = value;
    final question = questionsM[questionIndex];
    if (selectedAnswerIndex == question.correctAnswerIndexM) {
      score++;
    }
    setState(() {});
  }

  void goToNextQuestion() {
    if (questionIndex < questionsM.length - 1) {
      questionIndex++;
      selectedAnswerIndex = null;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final question = questionsM[questionIndex];
    bool isLastQuestion = questionIndex == questionsM.length - 1;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maths'),
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              question.questionM,
              style: const TextStyle(
                fontSize: 21,
              ),
              textAlign: TextAlign.center,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: question.optionsM.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: selectedAnswerIndex == null
                      ? () => pickAnswer(index)
                      : null,
                  child: AnswerCard(
                    currentIndex: index,
                    question: question.optionsM[index],
                    isSelected: selectedAnswerIndex == index,
                    selectedAnswerIndex: selectedAnswerIndex,
                    correctAnswerIndex: question.correctAnswerIndexM,
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
