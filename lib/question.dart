import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String? questionText;
  const Question({Key? key, this.questionText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.3,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(15),
      child: Text(
        questionText!,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
