import 'dart:math';

import 'package:compa_app/helper/enum.dart';

class QuestionModel {
  String questionContents;
  String outputOrder;
  String questionNumber;
  List<String> names;

  QuestionModel({
    required this.questionContents,
    required this.outputOrder,
    required this.questionNumber,
    required this.names,
  });
}

class QuestionManager {
  final OutputOrder outputOrder;
  QuestionManager(this.outputOrder);

  List<QuestionModel> getQuestions(QuestionContent category) {
    Map<PrivateQuestion, String> selectedCategory;
    List<PrivateQuestion> questionKeys;
    switch (category) {
      case QuestionContent.private:
        selectedCategory = privateQuestionLabel;
        questionKeys = selectedCategory.keys.toList();
        break;
      case QuestionContent.work:
        selectedCategory = workQuestionLabel as Map<PrivateQuestion, String>;
        questionKeys = selectedCategory.keys.toList();
        break;
      case QuestionContent.students_themselves:
        selectedCategory =
            studentsThemselvesQuestionLabel as Map<PrivateQuestion, String>;
        questionKeys = selectedCategory.keys.toList();
        break;
    }

    if (outputOrder == OutputOrder.random) {
      questionKeys.shuffle(Random());
    }

    return questionKeys
        .map((key) => QuestionModel(
              questionContents: selectedCategory[key]!,
              outputOrder: outputOrder.toString(),
              questionNumber: key.toString(),
              names: ['Name1', 'Name2'], // ここに実際の名前のリストを設定する必要があります
            ))
        .toList();
  }
}
