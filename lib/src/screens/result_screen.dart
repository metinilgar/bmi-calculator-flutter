import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bmi_calculator/src/components/bottom_fixed_button.dart';
import 'package:bmi_calculator/src/constants.dart';
import 'package:bmi_calculator/src/components/reusable_card.dart';
import 'package:bmi_calculator/src/controllers/calculator_brain.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.weight,
    required this.height,
  });

  final int weight;
  final int height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BMI CALCULATOR")),
      bottomNavigationBar: BottomFixedButton(
        onPressed: () => Navigator.of(context).pop(),
        child: const Text("RE-CALCULATE YOUR BMI"),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("Your Result", style: kTitleTextStyle),
            const SizedBox(height: 16),
            ReusableCard(
              color: kActiveCardColour,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                child: Consumer(
                  builder: (context, ref, child) {
                    final calculatorBrain = ref
                        .read(calculatorBrainProvider(height, weight).notifier);

                    return Column(
                      children: [
                        Text(
                          calculatorBrain.resultText,
                          style: kResultTextStyle,
                        ),
                        Text(
                          calculatorBrain.bmiResult,
                          style: kBMITextStyle,
                        ),
                        const Text(
                          "Normal BMI Range:",
                          style: kLabelTextStyle,
                        ),
                        const Text(
                          "18,5 - 25 kg/m2",
                          style: kBodyTextStyle,
                        ),
                        const SizedBox(height: 50),
                        Text(
                          calculatorBrain.interpretation,
                          style: kBodyTextStyle,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 50),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kInactiveCardColour,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.all(16),
                            shape: const RoundedRectangleBorder(),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            child: Text("Save Result",
                                style: kLargeButtonTextStyle),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
