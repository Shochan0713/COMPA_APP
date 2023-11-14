import 'package:flutter/material.dart';

class QuestionTextDisplay extends StatelessWidget {
  final String questionContents;
  const QuestionTextDisplay({super.key, required this.questionContents});

  @override
  Widget build(BuildContext context) {
    return Text(
      questionContents,
      style: TextStyle(fontSize: 18),
    );
  }
}
