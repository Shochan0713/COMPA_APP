import 'package:compa_app/widgets/back_ground_image_widget.dart';
import 'package:compa_app/widgets/transparent_border_widget.dart';
import 'package:flutter/material.dart';

class ConversationConteneCreatinngResultScreen extends StatefulWidget {
  const ConversationConteneCreatinngResultScreen({super.key});

  @override
  State<ConversationConteneCreatinngResultScreen> createState() =>
      _ConversationConteneCreatinngResultScreenState();
}

class _ConversationConteneCreatinngResultScreenState
    extends State<ConversationConteneCreatinngResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        child: Center(
          child: TransparentBorder(
            child: Text("テキストボックス"),
            //質問数を出力
            //回答者の名前
            //回答者の名前はランダム
            //質問内容を表示
            //次の画面を表示ボタン
            //質問設定ボタンを表示
          ),
        ),
      ),
    );
  }
}
