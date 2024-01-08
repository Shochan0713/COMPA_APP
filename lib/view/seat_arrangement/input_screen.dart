import 'package:compa_app/view/seat_arrangement/result_screen.dart';
import 'package:compa_app/widgets/back_ground_image_widget.dart';
import 'package:compa_app/widgets/custom_elevated_button.dart';
import 'package:compa_app/widgets/show_number_of_peopleInput.dart';
import 'package:compa_app/widgets/transparent_border_widget.dart';
import 'package:flutter/material.dart';

class SeatArrangementInputScreen extends StatefulWidget {
  const SeatArrangementInputScreen({super.key});

  @override
  State<SeatArrangementInputScreen> createState() =>
      _SeatArrangementInputScreenState();
}

class _SeatArrangementInputScreenState
    extends State<SeatArrangementInputScreen> {
  List<String> selectedNames = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        child: Center(
          child: TransparentBorder(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 450,
                      child: SingleChildScrollView(
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          child: Column(
                            children: [
                              NameInputForm(
                                onNamesChanged: (List<String> names) {
                                  setState(() {
                                    selectedNames = names;
                                  });
                                  // ignore: avoid_print
                                  print('Selected names; $selectedNames');
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomElevatedButton(
                      text: "席替えへGO‼︎",
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SeatArrangementResultScreen(
                              names: selectedNames,
                            ),
                          ),
                        );
                      },
                    )
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
