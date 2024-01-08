import 'package:compa_app/view/conversation_content/question_creating_screen.dart';
import 'package:compa_app/view/seat_arrangement/input_screen.dart';
import 'package:compa_app/widgets/back_ground_image_widget.dart';
import 'package:compa_app/widgets/custom_elevated_button.dart';
import 'package:compa_app/widgets/transparent_border_widget.dart';
import 'package:flutter/material.dart';

class SelectScreen extends StatefulWidget {
  const SelectScreen({super.key});

  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        child: Center(
          child: TransparentBorder(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomElevatedButton(
                      text: 'コミュニケーション',
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const ConversionContentCreatingScreen(),
                          ),
                        );
                      }),
                  CustomElevatedButton(
                    text: '席替え',
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const SeatArrangementInputScreen(),
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
    );
  }
}
