import 'package:compa_app/widget/back_ground_image_widget.dart';
import 'package:compa_app/widget/transparent_border_widget.dart';
import 'package:flutter/material.dart';

class ConversionContentCreatingScreen extends StatefulWidget {
  const ConversionContentCreatingScreen({super.key});

  @override
  State<ConversionContentCreatingScreen> createState() =>
      _ConversionContentCreatingScreenState();
}

class _ConversionContentCreatingScreenState
    extends State<ConversionContentCreatingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
          child: Center(
        child: TransparentBorder(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                '選択肢',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Row()
            //ドロップダウン1＜質問内容＞
            //ラジオボタン＜ランダムか順番か＞
            //質問数の選択
            //一人に対してか否か
            //名前入力
            //一人を選択した場合には、一人文の名前入力テキストボックス
            //複数人を選んだ場合には、人数を入力
            //入力された人数分のテキストボックス出力
          ],
        )),
      )),
    );
  }
}
