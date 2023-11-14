import 'package:compa_app/Models/models.dart';
import 'package:compa_app/providers/providers.dart';
import 'package:compa_app/widgets/back_ground_image_widget.dart';
import 'package:compa_app/widgets/question_text_display.dart';
import 'package:compa_app/widgets/transparent_border_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConversationConteneCreatinngResultScreen extends ConsumerWidget {
  final String questionContents;
  final String outPutOrder;
  final String questionNumber;
  final List<String> names;
  final QuestionManager questionManager;

  const ConversationConteneCreatinngResultScreen({
    Key? key,
    required this.questionContents,
    required this.questionNumber,
    required this.outPutOrder,
    required this.names,
    required this.questionManager,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questions = ref.watch(questionStateNottifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Result Screen'),
      ),
      body: BackgroundImage(
        child: Center(
          child: TransparentBorder(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                QuestionTextDisplay(
                  questionContents: questions.isNotEmpty
                      ? questions.first.questionContents
                      : '質問は以上です。',
                ),
                ElevatedButton(
                  onPressed: () {
                    if (questions.isNotEmpty) {
                      ref
                          .read(questionStateNottifierProvider.notifier)
                          .updateQuestions(questions);
                    }
                  },
                  child: Text('Next Question'),
                ),
                Text(
                  'Question Contents: ${questions.map((q) => q.questionContents).join(', ')}',
                ),
                Text(
                  'Output Order: ${questions.map((q) => q.outputOrder).join(', ')}',
                ),
                Text(
                  'Question Number: ${questions.map((q) => q.questionNumber).join(', ')}',
                ),
                Text(
                  'Names: ${questions.expand((q) => q.names).join(', ')}',
                ),
                // 他のウィジェットを追加
              ],
            ),
          ),
        ),
      ),
    );
  }
}
