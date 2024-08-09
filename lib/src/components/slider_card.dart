import 'package:flutter/material.dart';

import 'package:bmi_calculator/src/constants.dart';

class SliderCard extends StatelessWidget {
  const SliderCard({
    super.key,
    required this.title,
    required this.onChanged,
    required this.currentSliderValue,
    required this.label,
    this.max = 240,
    this.min = 100,
  });

  final String title;
  final String label;
  final int currentSliderValue;
  final double max;
  final double min;
  final void Function(double value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: kLabelTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(currentSliderValue.toString(), style: kNumberTextStyle),
            Text(label, style: kLabelTextStyle)
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.white,
            inactiveTrackColor: Colors.grey,
            thumbColor: kBottomContainerColour,
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12),
            overlayColor: kBottomContainerColour.withOpacity(.2),
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 22),
            trackHeight: 2,
            trackShape: const RectangularSliderTrackShape(),
          ),
          child: Slider(
            max: max,
            min: min,
            value: currentSliderValue.toDouble(),
            onChanged: onChanged,
          ),
        )
      ],
    );
  }
}
