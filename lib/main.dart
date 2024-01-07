import 'package:compa_app/view/initial_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    // ignore: prefer_const_constructors
    ProviderScope(
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: prefer_const_constructors
      home: InitialScreen(),
      theme: ThemeData(fontFamily: 'Dela Gothic One'),
    );
  }
}
