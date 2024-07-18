import 'dart:developer' as developer;
import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  Random random = Random();
  int diceValue = 1;

  void changeDiceValue() {
    setState(() {
      diceValue = random.nextInt(6) + 1;
    });
    developer.log('Dice value changed! New value: $diceValue');
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-$diceValue.png',
          width: width / 3,
        ),
        FloatingActionButton(
          backgroundColor: Colors.cyan,
          foregroundColor: Colors.white,
          onPressed: changeDiceValue,
          tooltip: 'Change value',
          child: const Icon(Icons.change_circle_outlined),
        ),
      ],
    );
  }
}
