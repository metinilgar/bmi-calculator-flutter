import 'package:flutter/material.dart';

import 'package:bmi_calculator/src/constants.dart';

class BottomFixedButton extends StatelessWidget {
  const BottomFixedButton({super.key, this.child, required this.onPressed});

  final Widget? child;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(),
          padding: const EdgeInsets.all(20),
          backgroundColor: kBottomContainerColour,
          foregroundColor: Colors.white,
          textStyle: kBodyTextStyle),
      child: child,
    );
  }
}
