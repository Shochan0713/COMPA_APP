import 'package:compa_app/helper/enum.dart';
import 'package:compa_app/view/conversation_content_creating_result_screen.dart';
import 'package:compa_app/widgets/back_ground_image_widget.dart';
import 'package:compa_app/widgets/common_radio_button.dart';
import 'package:compa_app/widgets/custom_elevated_button.dart';
import 'package:compa_app/widgets/drop_down_button.dart';
import 'package:compa_app/widgets/show_number_of_peopleInput.dart';
import 'package:compa_app/widgets/transparent_border_widget.dart';
import 'package:flutter/material.dart';

class ConversionContentCreatingScreen extends StatefulWidget {
  const ConversionContentCreatingScreen({super.key});

  @override
  State<ConversionContentCreatingScreen> createState() =>
      _ConversionContentCreatingScreenState();
}

class _ConversionContentCreatingScreenState
    extends State<ConversionContentCreatingScreen> {
  int selectedNumber = 1;
  List<Widget> nameInputFields = [NameInputField()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        child: Center(
          child: TransparentBorder(
            child: SingleChildScrollView(
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
                      items: questionContentLabels),
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
                        print('Selected value: $value');
                      },
                      items: questionnumberLabel),
                  NameInputForm(),
                  CustomElevatedButton(
                      text: '質問へGO！！',
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const ConversationConteneCreatinngResultScreen(),
                          ),
                        );
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
