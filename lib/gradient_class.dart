import 'package:flutter/material.dart';
import 'package:diceroller/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colours, {super.key});

  final List<Color> colours;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: colours,
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: const Center(child: DiceRoller()),
    );
  }
}
