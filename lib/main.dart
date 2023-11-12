import 'package:compa_app/view/initial_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InitialScreen(),
      theme: ThemeData(fontFamily: 'Dela Gothic One'),
    );
  }
}
