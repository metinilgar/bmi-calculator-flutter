import 'package:flutter/material.dart';

import 'package:bmi_calculator/src/components/round_icon_button.dart';
import 'package:bmi_calculator/src/constants.dart';

class SelectionCard extends StatelessWidget {
  const SelectionCard({
    super.key,
    required this.label,
    required this.value,
    required this.increment,
    required this.decrease,
  });

  final String label;
  final int value;

  final void Function() increment;
  final void Function() decrease;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label, style: kLabelTextStyle),
        const SizedBox(height: 8),
        Text(value.toString(), style: kNumberTextStyle),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RoundIconButton(
              onPressed: increment,
              icon: const Icon(Icons.add),
            ),
            RoundIconButton(
              onPressed: decrease,
              icon: const Icon(Icons.remove),
            ),
          ],
        )
      ],
    );
  }
}
