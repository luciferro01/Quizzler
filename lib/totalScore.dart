import 'package:flutter/material.dart';

class TotalScore extends StatelessWidget {
  final int score;
  const TotalScore(this.score, {Key? key}) : super(key: key);

  String get result {
    String resultText;
    if (score == 50) {
      resultText = 'You  are awesome and have great knowledge';
    } else if (score <= 40) {
      resultText = 'You have good knowledge';
    } else if (score < 25) {
      resultText = 'You need to practice';
    } else {
      resultText = 'You are almost failed';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      result,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
    );
  }
}
