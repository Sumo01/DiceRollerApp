import 'package:flutter/material.dart';
import 'package:diceroller/gradient_class.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(const [
          Color.fromARGB(255, 152, 115, 218),
          Colors.deepPurple,
          Color.fromARGB(255, 46, 19, 92)
        ]),
      ),
    ),
  );
}
