import 'package:compa_app/view/seat_arrangement/input_screen.dart';
import 'package:compa_app/widgets/back_ground_image_widget.dart';
import 'package:compa_app/widgets/custom_elevated_button.dart';
import 'package:compa_app/widgets/transparent_border_widget.dart';
import 'package:flutter/material.dart';

class SeatArrangementResultScreen extends StatefulWidget {
  const SeatArrangementResultScreen({
    super.key,
    required this.names,
  });
  final List<String> names;
  @override
  State<SeatArrangementResultScreen> createState() =>
      _SeatArrangementResultScreenState();
}

class _SeatArrangementResultScreenState
    extends State<SeatArrangementResultScreen> {
  List<String> shuffledNames = [];

  @override
  void initState() {
    super.initState();
    shuffledNames = List.from(widget.names)..shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        child: Center(
          child: TransparentBorder(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 450,
                    child: SingleChildScrollView(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            shuffledNames.length,
                            (index) => ListTile(
                              title: Text(shuffledNames[index]),
                              subtitle: Text('Seat ${index + 1}'),
                            ),
                          ),
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
