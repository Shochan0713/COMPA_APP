import 'dart:math';

import 'package:compa_app/Models/models.dart';
import 'package:compa_app/helper/enum.dart';
import 'package:compa_app/view/conversation_content/question_end_screen.dart';
import 'package:compa_app/widgets/back_ground_image_widget.dart';
import 'package:compa_app/widgets/custom_elevated_button.dart';
import 'package:compa_app/widgets/transparent_border_widget.dart';
import 'package:flutter/material.dart';

class ConversationContentCreatingResultScreen extends StatefulWidget {
  final QuestionContent questionContents;
  final String outputOrder;
  final QuestionNumber questionNumber;
  final List<String> names;
  final QuestionManager questionManager;

  const ConversationContentCreatingResultScreen({
    super.key,
    required this.questionContents,
    required this.questionNumber,
    required this.outputOrder,
    required this.names,
    required this.questionManager,
  });

  @override
  State<ConversationContentCreatingResultScreen> createState() =>
      _ConversationContentCreatingResultScreenState();
}

class _ConversationContentCreatingResultScreenState
    extends State<ConversationContentCreatingResultScreen> {
  late List<String> displayedQuestions;
  late List<String> displayedNames;
  late int currentQuestionIndex;
  late int questionCount;
  late String buttonText;

  @override
  void initState() {
    debugPrint('画面の始まり');
    super.initState();
    displayedQuestions = [];
    currentQuestionIndex = 0;
    displayedNames = widget.names;
    questionCount = int.parse(questionnumberLabel[widget.questionNumber]!);
    buttonText = "次へ";
    selectQuestions();
  }

  void selectQuestions() {
// Enum値に基づいて処理を進める
    if (widget.questionContents == QuestionContent.private) {
      displayedQuestions = privateQuestionLabel.values.toList();
    } else if (widget.questionContents == QuestionContent.work) {
      displayedQuestions = workQuestionLabel.values.toList();
    } else if (widget.questionContents == QuestionContent.students_themselves) {
      displayedQuestions = studentsThemselvesQuestionLabel.values.toList();
    } else {
      debugPrint('何も入っていない');
    }

    if (widget.outputOrder == 'OutputOrder.random') {
      displayedQuestions.shuffle();
    }

    debugPrint('Displayed Questions: $displayedQuestions');
  }

  void moveToNextQuestion() {
    setState(() {
      if (currentQuestionIndex < questionCount - 1) {
        currentQuestionIndex++;
        buttonText = (currentQuestionIndex == questionCount - 2)
            ? "最後の質問へ！"
            : (currentQuestionIndex == questionCount - 1)
                ? "最終質問！！"
                : "次へ";
      } else {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const QuestionEndScreen()),
        );
      }
    });
  }

  String getRandomName(List<String> names) {
    // ignore: unused_local_variable
    final random = Random();
    names.shuffle(); // リストをシャッフルする
    return names.first; // シャッフル後の最初の要素を取得する
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        child: Center(
          child: TransparentBorder(
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 450,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "質問No:",
                                style: TextStyle(fontSize: 30),
                              ),
                              Text(
                                toFullWidth(
                                    (currentQuestionIndex + 1).toString()),
                                style: const TextStyle(fontSize: 30),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Text(
                            getRandomName(displayedNames),
                            style: const TextStyle(fontSize: 30),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            displayedQuestions[currentQuestionIndex],
                            style: const TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: CustomElevatedButton(
                        onPressed: moveToNextQuestion,
                        text: buttonText,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  QuestionNumber getQuestionNumberFromString(String value) {
    switch (value) {
      case "5":
        return QuestionNumber.TYPE1;
      case "10":
        return QuestionNumber.TYPE2;
      case "15":
        return QuestionNumber.TYPE3;
      case "20":
        return QuestionNumber.TYPE4;
      default:
        throw Exception("Invalid question number");
    }
  }

  String toFullWidth(String input) {
    return input.replaceAllMapped(RegExp(r'[0-9]'), (match) {
      return String.fromCharCode(match.group(0)!.codeUnitAt(0) + 0xfee0);
    });
  }
}
