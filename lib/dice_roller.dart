import 'package:flutter/material.dart';
import 'package:diceroller/random_number_generator.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  String activeDiceImage = "assets/images/dice-1.png";

  void rollDice() {
    setState(() {
      int ranNum = RandomNumberGenerator.generateRandomNumber();
      activeDiceImage = "assets/images/dice-${ranNum.toString()}.png";
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(activeDiceImage, width: 200),
      TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 28,
              )),
          child: const Text("Roll Dice"))
    ]);
  }
}
