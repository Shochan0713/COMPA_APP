import 'package:compa_app/helper/enum.dart';
import 'package:compa_app/widget/back_ground_image_widget.dart';
import 'package:compa_app/widget/common_radio_button.dart';
import 'package:compa_app/widget/drop_down_button.dart';
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
                '質問を選んでね！！',
                style: TextStyle(color: Colors.white),
              ),
            ),
            CommonDropButton<QuestionContent>(
              initialValue: QuestionContent.private,
              onChanged: (value) {
                print('Selected QuestionContent: $value');
              },
              items: {
                QuestionContent.private: "私生活の質問",
                QuestionContent.work: "仕事の質問",
              },
            ),
            Row(),
            CommonRadioButton<OutputOrder>(
              selectedValue: OutputOrder.random,
              onValueChanged: (value) {
                print('Selected OutputOrder: $value');
              },
              items: OutputOrder.values,
              itemBuilder: (value) {
                return Text(outputOrder[value]!);
              },
            ),
            CommonDropButton<QuestionNumber>(
                initialValue: QuestionNumber.TYPE1,
                onChanged: (value) {
                  print('Selected QuestionContent: $value');
                },
                items: questionnumberLabel)

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
