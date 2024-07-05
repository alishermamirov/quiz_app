// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int trueAnswersCount;
  final int answersAndQuestionsLength;
  final Function restart;
  const Result({
    Key? key,
    required this.trueAnswersCount,
    required this.answersAndQuestionsLength,
    required this.restart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
                  child: Column(
                    children: [
                      const Text("Natija"),
                      Text("${trueAnswersCount}/${answersAndQuestionsLength}"),
                      ElevatedButton(
                          onPressed: () {
                           restart();
                          },
                          child: const Text("restart"))
                    ],
                  ),
                );
  }
}
