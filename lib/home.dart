import 'package:flutter/material.dart';
import 'package:roll_dice/gradient_container.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GradientContainer(
        Colors.blueAccent,
        Colors.blue,
      ),
    );
  }
}
