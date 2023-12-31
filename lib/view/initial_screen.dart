import 'dart:async';

import 'package:compa_app/view/selected_screen.dart';
import 'package:compa_app/widgets/back_ground_image_widget.dart';
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
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const SelectScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundImage(
            child: Center(
      child: Image.asset("assets/images/logo.png"),
    )));
  }
}
