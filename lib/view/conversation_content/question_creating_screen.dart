import 'package:compa_app/Models/models.dart';
import 'package:compa_app/helper/enum.dart';
import 'package:compa_app/view/conversation_content/question_screen.dart';
import 'package:compa_app/widgets/back_ground_image_widget.dart';
import 'package:compa_app/widgets/common_radio_button.dart';
import 'package:compa_app/widgets/custom_elevated_button.dart';
import 'package:compa_app/widgets/drop_down_button.dart';
import 'package:compa_app/widgets/show_number_of_peopleInput.dart';
import 'package:compa_app/widgets/transparent_border_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConversionContentCreatingScreen extends StatefulWidget {
  const ConversionContentCreatingScreen({Key? key}) : super(key: key);

  @override
  State<ConversionContentCreatingScreen> createState() =>
      _ConversionContentCreatingScreenState();
}

class _ConversionContentCreatingScreenState
    extends State<ConversionContentCreatingScreen> {
  int selectedNumber = 1;
  late QuestionContent selectedQuestionContent;
  late OutputOrder selectedOutputOrder;
  late QuestionNumber selectedQuestionNumber;
  List<String> selectedNames = [];
  late QuestionManager questionManager;

  @override
  void initState() {
    super.initState();
    selectedQuestionContent = QuestionContent.private;
    selectedOutputOrder = OutputOrder.random;
    selectedQuestionNumber = QuestionNumber.TYPE1;
    selectedNames = ["ユーザー１"];
    questionManager = QuestionManager(selectedOutputOrder);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, _) {
          return BackgroundImage(
            child: Center(
              child: TransparentBorder(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          '質問を選んでね！！',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      CommonDropButton<QuestionContent>(
                        initialValue: QuestionContent.private,
                        onChanged: (selectedValue) {
                          setState(() {
                            selectedQuestionContent = selectedValue;
                          });
                          // ignore: avoid_print
                          print('Selected QuestionContent: $selectedValue');
                        },
                        items: questionContentLabels,
                      ),
                      CommonRadioButton<OutputOrder>(
                        selectedValue: OutputOrder.random,
                        onValueChanged: (selectedValue) {
                          setState(() {
                            selectedOutputOrder = selectedValue;
                            questionManager =
                                QuestionManager(selectedOutputOrder);
                          });
                          // ignore: avoid_print
                          print('Selected OutputOrder: $selectedValue');
                        },
                        items: OutputOrder.values,
                        itemBuilder: (value) {
                          return Text(outputOrder[value]!);
                        },
                      ),
                      CommonDropButton<QuestionNumber>(
                        initialValue: QuestionNumber.TYPE1,
                        onChanged: (selectedValue) {
                          setState(() {
                            selectedQuestionNumber = selectedValue;
                            debugPrint('$selectedQuestionNumber');
                          });
                          // ignore: avoid_print
                          print('Selected value: $selectedValue');
                        },
                        items: questionnumberLabel,
                      ),
                      NameInputForm(
                        onNamesChanged: (List<String> names) {
                          setState(() {
                            selectedNames = names;
                          });
                          // ignore: avoid_print
                          print('Selected names; $selectedNames');
                        },
                      ),
                      CustomElevatedButton(
                        text: '質問へGO！！',
                        onPressed: () {
                          // ignore: avoid_print
                          debugPrint(
                              'selectedQuestionContent: $selectedQuestionContent');
                          // ignore: avoid_print
                          debugPrint('outPutOrder: $selectedOutputOrder');
                          // ignore: avoid_print
                          debugPrint(
                              'selectesQuestionNumber: $selectedQuestionNumber');
                          // ignore: avoid_print
                          debugPrint('selectedNames: $selectedNames');

                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  ConversationContentCreatingResultScreen(
                                questionContents: selectedQuestionContent,
                                outputOrder: selectedOutputOrder.toString(),
                                questionNumber: selectedQuestionNumber,
                                names: selectedNames,
                                questionManager: questionManager,
                                key: UniqueKey(),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
