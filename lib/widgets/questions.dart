// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String question;
  final List<Map<String, dynamic>> answers;
  final Function nextQuestion;
  const Questions({
    Key? key,
    required this.question,
    required this.answers,
    required this.nextQuestion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(question),
        ElevatedButton(
            onPressed: () {
              nextQuestion(
                  answers[0]["isTrue"]);
            },
            child: Text(
                answers[0]["answer"])),
        ElevatedButton(
            onPressed: () {
              nextQuestion(
                 answers[1]["isTrue"]);
            },
            child: Text(
               answers[1]["answer"])),
        ElevatedButton(
            onPressed: () {
              nextQuestion(
                  answers[2]["isTrue"]);
            },
            child: Text(
               answers[2]["answer"])),
        ElevatedButton(
            onPressed: () {
              nextQuestion(
                 answers[3]["isTrue"]);
            },
            child: Text(
               answers[3]["answer"])),
      ],
    );
  }
}
