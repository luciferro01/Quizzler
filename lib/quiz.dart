import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function selectedAnswer;
  const Quiz(
      {Key? key,
      required this.questionIndex,
      required this.questions,
      required this.selectedAnswer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
            questionText: questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List).map((e) {
          return Answer(
            () => selectedAnswer(e['score']),
            e['text'].toString(),
          );
        }).toList(),
      ],
    );
  }
}
