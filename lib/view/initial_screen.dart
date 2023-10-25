import 'dart:async';

import 'package:compa_app/view/conversation_content_creating_screen.dart';
import 'package:compa_app/widget/back_ground_image.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => ConversionContentCreatingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundImage(
            child: Center(
      child: Text('初期画面'),
    )));
  }
}
