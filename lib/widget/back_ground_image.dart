import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  final Widget child;
  BackgroundImage({required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/shibuya.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        child,
      ],
    );
  }
}
