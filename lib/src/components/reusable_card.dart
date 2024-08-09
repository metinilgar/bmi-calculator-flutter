import 'package:flutter/material.dart';

import 'package:bmi_calculator/src/constants.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {super.key,
      this.child,
      this.onPressed,
      this.color = kInactiveCardColour});

  final Color? color;
  final Widget? child;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 24),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: child,
      ),
    );
  }
}
