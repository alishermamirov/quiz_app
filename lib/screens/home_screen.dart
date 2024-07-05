import 'package:flutter/material.dart';

import '../widgets/questions.dart';
import '../widgets/result.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> answersAndQuestions = [
    {
      "question": "question No1",
      "answers": [
        {"answer": "Answer No1 Q1", "isTrue": false},
        {"answer": "Answer No2 Q1", "isTrue": true},
        {"answer": "Answer No3 Q1", "isTrue": false},
        {"answer": "Answer No4 Q1", "isTrue": false},
      ]
    },
    {
      "question": "question No2",
      "answers": [
        {"answer": "Answer No1 Q2", "isTrue": false},
        {"answer": "Answer No2 Q2", "isTrue": true},
        {"answer": "Answer No3 Q2", "isTrue": false},
        {"answer": "Answer No4 Q2", "isTrue": false},
      ]
    },
    {
      "question": "question No3",
      "answers": [
        {"answer": "Answer No1 Q3", "isTrue": false},
        {"answer": "Answer No2 Q3", "isTrue": true},
        {"answer": "Answer No3 Q3", "isTrue": false},
        {"answer": "Answer No4 Q3", "isTrue": false},
      ]
    }
  ];
  int questionIndex = 0;
  int trueAnswersCount = 0;

  void nextQuestion(bool isTrue) {
    setState(() {
      questionIndex++;
      isTrue ? trueAnswersCount++ : trueAnswersCount;
    });
    print(isTrue);
  }

  void restart() {
    setState(() {
      questionIndex = 0;
      trueAnswersCount = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz"),
      ),
      body: questionIndex < answersAndQuestions.length
          ? Questions(
              question: answersAndQuestions[questionIndex]["question"],
              answers: answersAndQuestions[questionIndex]["answers"],
              nextQuestion: nextQuestion)
          : Result(
              trueAnswersCount: trueAnswersCount,
              answersAndQuestionsLength: answersAndQuestions.length,
              restart: restart),
    );
  }
}
