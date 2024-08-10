import 'package:flutter/material.dart';

import 'package:bmi_calculator/src/components/bottom_fixed_button.dart';
import 'package:bmi_calculator/src/components/reusable_card.dart';
import 'package:bmi_calculator/src/components/selection_card.dart';
import 'package:bmi_calculator/src/components/slider_card.dart';
import 'package:bmi_calculator/src/constants.dart';
import 'package:bmi_calculator/src/screens/result_screen.dart';

enum Gender {
  male,
  female,
}

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});
  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  Gender _selectedGender = Gender.male;
  int _height = 160;
  int _age = 25;
  int _weight = 60;

  void _calculateBMI() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => const ResultScreen(
        bmiResult: "22.1",
        resultText: "NORMAL",
        interpretation: "You have a normal body weight. Good Job!",
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Center(child: Text("BMI CALCULATOR"))),
        bottomNavigationBar: BottomFixedButton(
          onPressed: _calculateBMI,
          child: const Text("CALCULATE YOUR BMI"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        color: (_selectedGender == Gender.male)
                            ? kActiveCardColour
                            : kInactiveCardColour,
                        onPressed: () =>
                            setState(() => _selectedGender = Gender.male),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.male, size: 100),
                            SizedBox(height: 4),
                            Text("MALE", style: kBodyTextStyle),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: ReusableCard(
                        color: (_selectedGender == Gender.female)
                            ? kActiveCardColour
                            : kInactiveCardColour,
                        onPressed: () =>
                            setState(() => _selectedGender = Gender.female),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.female, size: 100),
                            SizedBox(height: 4),
                            Text("FEMALE", style: kBodyTextStyle),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ReusableCard(
                  child: SliderCard(
                    title: "HEIGHT",
                    label: "cm",
                    currentSliderValue: _height,
                    onChanged: (value) =>
                        setState(() => _height = value.toInt()),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        child: SelectionCard(
                          label: "WEIGHT",
                          value: _weight,
                          increment: () => setState(() => _weight++),
                          decrease: () => setState(() => _weight--),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: ReusableCard(
                        child: SelectionCard(
                          label: "AGE",
                          value: _age,
                          increment: () => setState(() => _age++),
                          decrease: () => setState(() => _age--),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
