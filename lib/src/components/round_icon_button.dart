import 'package:flutter/material.dart';

import 'package:bmi_calculator/src/constants.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  final void Function() onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: kActiveCardColour,
            foregroundColor: Colors.white,
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(15)),
        child: icon,
      ),
    );
  }
}
