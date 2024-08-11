import 'dart:math';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'calculator_brain.g.dart';

@riverpod
class CalculatorBrain extends _$CalculatorBrain {
  late double _bmi;

  @override
  void build(int height, int weight) {
    _bmi = double.parse((weight / pow(height / 100, 2)).toStringAsFixed(1));
  }

  String get bmiResult {
    return _bmi.toString();
  }

  String get resultText {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String get interpretation {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
