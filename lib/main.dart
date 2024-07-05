import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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

  void nextQustion(bool isTrue) {
    setState(() {
      questionIndex++;
      isTrue ? trueAnswersCount++ : trueAnswersCount;
    });
    print(isTrue);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(answersAndQuestions[questionIndex]["question"]),
            ElevatedButton(
                onPressed: () {
                  nextQustion(answersAndQuestions[questionIndex]["answers"][0]
                      ["isTrue"]);
                },
                child: Text(answersAndQuestions[questionIndex]["answers"][0]
                    ["answer"])),
            ElevatedButton(
                onPressed: () {
                  nextQustion(answersAndQuestions[questionIndex]["answers"][1]
                      ["isTrue"]);
                },
                child: Text(answersAndQuestions[questionIndex]["answers"][1]
                    ["answer"])),
            ElevatedButton(
                onPressed: () {
                  nextQustion(answersAndQuestions[questionIndex]["answers"][2]
                      ["isTrue"]);
                },
                child: Text(answersAndQuestions[questionIndex]["answers"][2]
                    ["answer"])),
            ElevatedButton(
                onPressed: () {
                  nextQustion(answersAndQuestions[questionIndex]["answers"][3]
                      ["isTrue"]);
                },
                child: Text(answersAndQuestions[questionIndex]["answers"][3]
                    ["answer"])),
          ],
        ),
      ),
    );
  }
}
