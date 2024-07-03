import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
        ),
        body: Column(
          children: [
            Text("Question 1"),
            ElevatedButton(onPressed: () {}, child: Text("Answer 1")),
            ElevatedButton(onPressed: () {}, child: Text("Answer 2")),
            ElevatedButton(onPressed: () {}, child: Text("Answer 3")),
            ElevatedButton(onPressed: () {}, child: Text("Answer 4")),
          ],
        ),
      ),
    );
  }
}
