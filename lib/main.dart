import 'package:flutter/material.dart';
import 'package:quizzler/quiz.dart';
import 'package:quizzler/result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: _Quizzler(),
    );
  }
}

class _Quizzler extends StatefulWidget {
  @override
  State<_Quizzler> createState() => _QuizzlerState();
}

class _QuizzlerState extends State<_Quizzler> {
  final _questions = [
    {
      'questionText': 'Q1. Who created Flutter?',
      'answers': [
        {'text': 'Facebook', 'score': -2},
        {'text': 'Adobe', 'score': -2},
        {'text': 'Google', 'score': 10},
        {'text': 'Microsoft', 'score': -2},
      ],
    },
    {
      'questionText': 'Q2. What is Flutter?',
      'answers': [
        {'text': 'Android Development Kit', 'score': -2},
        {'text': 'IOS Development Kit', 'score': -2},
        {'text': 'Web Development Kit', 'score': -2},
        {
          'text':
              'SDK to build beautiful IOS, Android, Web & Desktop Native Apps',
          'score': 10
        },
      ],
    },
    {
      'questionText': ' Q3. Which programing language is used by Flutter',
      'answers': [
        {'text': 'Ruby', 'score': -2},
        {'text': 'Dart', 'score': 10},
        {'text': 'C++', 'score': -2},
        {'text': 'Kotlin', 'score': -2},
      ],
    },
    {
      'questionText': 'Q4. Who created Dart programing language?',
      'answers': [
        {'text': 'Lars Bak and Kasper Lund', 'score': 10},
        {'text': 'Brendan Eich', 'score': -2},
        {'text': 'Bjarne Stroustrup', 'score': -2},
        {'text': 'Jeremy Ashkenas', 'score': -2},
      ],
    },
    {
      'questionText':
          'Q5. Is Flutter for Web and Desktop available in stable version?',
      'answers': [
        {
          'text': 'Yes',
          'score': -2,
        },
        {'text': 'No', 'score': 10},
      ],
    },
  ];

  int questionIndex = 0;
  int netScore = 0;
  void selectedAnswer() {}

  _resetQuiz() {
    setState(() {
      questionIndex = 0;
      netScore = 0;
    });
  }

  void submitData(int score) {
    netScore += score;
    // setState(() {
    //   questionIndex++;
    // });
    setState(() {
      questionIndex = questionIndex + 1;
    });
    // ignore: avoid_print
    print(questionIndex);
    if (questionIndex < _questions.length) {
      // ignore: avoid_print
      print('We have more questions!');
    } else {
      // ignore: avoid_print
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.black,
        centerTitle: true,

        title: const Text(
          'Quizzler',
          style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: questionIndex < _questions.length
                ? Quiz(
                    questionIndex: questionIndex,
                    questions: _questions,
                    selectedAnswer: submitData)
                : Result(netScore, _resetQuiz),
          ),
        ],
      ),
    );
  }
}
