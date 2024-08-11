import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bmi_calculator/src/screens/input_screen.dart';

void main() {
  runApp(const ProviderScope(child: BMICalculator()));
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
          surfaceTintColor: Colors.transparent,
          elevation: 5,
          shadowColor: Colors.black,
          centerTitle: true,
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: const InputScreen(),
    );
  }
}
