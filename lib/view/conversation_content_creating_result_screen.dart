import 'package:compa_app/Models/models.dart';
import 'package:compa_app/providers/providers.dart';
import 'package:compa_app/widgets/back_ground_image_widget.dart';
import 'package:compa_app/widgets/custom_elevated_button.dart';
import 'package:compa_app/widgets/transparent_border_widget.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

class ConversationConteneCreatinngResultScreen extends StatefulWidget {
  const ConversationConteneCreatinngResultScreen({super.key});

  @override
  State<ConversationConteneCreatinngResultScreen> createState() =>
      _ConversationConteneCreatinngResultScreenState();
}

class _ConversationConteneCreatinngResultScreenState
    extends State<ConversationConteneCreatinngResultScreen> {
  late QuestionContentModel question; // late修飾子を使用して遅延初期化
  final container = ProviderContainer(); // ProviderContainerを作成

  @override
  void initState() {
    super.initState();
    question = container
        .read(questionContentProvider)!
        .state; // ProviderContainerを使用してread
  }

  @override
  void dispose() {
    container.dispose(); // 不要な場合はProviderContainerを破棄
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        child: Center(
          child: TransparentBorder(
            child: Column(
              children: [
                Text("9問目‼︎"),
                //質問数を出力
                //問題数の分の値を表示
                //回答者の名前
                //前のページで入力した名前をランダムで表示させる
                Text("XXさんが回答してね！！"),
                //質問内容を表示
                //選択した質問を前のページでランダムで表示するか、順番で表示するかを選択しているので、選択した内容で表示する
                Text("あなたの性格を一言で表すと？？"),
                //次の質問ボタンで、再ビルドする
                CustomElevatedButton(
                  text: "次の質問！",
                  onPressed: () {},
                ),
                //質問設定ボタンを表示させ、押下したら前のページへ遷移する。
                CustomElevatedButton(
                  text: "質問内容の再設定",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
