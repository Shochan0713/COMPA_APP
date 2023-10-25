import 'package:compa_app/widget/back_ground_image.dart';
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
        child: Text('選択画面'),
      ),
    ));
  }
}
