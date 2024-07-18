import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';

const Alignment startAlignment = Alignment.topLeft;
const Alignment endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.primaryColor, this.secondaryColor, {super.key});
  final Color primaryColor;
  final Color secondaryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [primaryColor, secondaryColor],
        ),
      ),
      child: const DiceRoller(),
    );
  }
}
