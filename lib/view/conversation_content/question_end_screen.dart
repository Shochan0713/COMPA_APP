import 'package:compa_app/view/conversation_content/question_creating_screen.dart';
import 'package:compa_app/widgets/back_ground_image_widget.dart';
import 'package:compa_app/widgets/custom_elevated_button.dart';
import 'package:compa_app/widgets/transparent_border_widget.dart';
import 'package:flutter/material.dart';

class QuestionEndScreen extends StatefulWidget {
  const QuestionEndScreen({super.key});

  @override
  State<QuestionEndScreen> createState() => _QuestionEndScreenState();
}

class _QuestionEndScreenState extends State<QuestionEndScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        child: Center(
          child: TransparentBorder(
            child: Center(
              child: Container(
                margin: const EdgeInsets.all(0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 450,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              child: Text(
                            "質問が終了しました！！",
                            style: TextStyle(fontSize: 30),
                          )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: CustomElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  const ConversionContentCreatingScreen()));
                        },
                        text: "ホーム画面へ",
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
}
