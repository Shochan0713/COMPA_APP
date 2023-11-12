import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConversationConteneCreatinngResultScreen extends ConsumerWidget {
  final String questionContents;
  final String outPutOrder;
  final String questionNumber;
  final List<String> names;

  const ConversationConteneCreatinngResultScreen({
    Key? key,
    required this.questionContents,
    required this.questionNumber,
    required this.outPutOrder,
    required this.names,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 実際のウィジェット構築ロジックをここに記述
    // refを使用して必要なプロバイダーからステートを取得
    // 例: final someState = ref.read(someProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Result Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Question Contents: $questionContents'),
            Text('Output Order: $outPutOrder'),
            Text('Question Number: $questionNumber'),
            Text('Names: ${names.join(', ')}'),
            // 必要に応じて他のウィジェットを追加
          ],
        ),
      ),
    );
  }
}
