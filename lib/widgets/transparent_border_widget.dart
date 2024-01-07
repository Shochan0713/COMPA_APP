import 'package:flutter/material.dart';

class TransparentBorder extends StatelessWidget {
  final Widget child;
  final Color borderColor;

  const TransparentBorder(
      {Key? key, required this.child, this.borderColor = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(23.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.9),
          border: Border.all(
            color: borderColor,
            width: 2.0,
          ),
        ),
        child: child,
      ),
    );
  }
}
