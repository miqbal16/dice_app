import 'dart:math';
import 'package:flutter/material.dart';

final randomGenerator = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int currentDiceRoll = 1;

  void roleDice() {
    setState(() {
      currentDiceRoll = randomGenerator.nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20.0),
        TextButton(
          onPressed: roleDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28.0),
          ),
          child: const Text('Role Dice'),
        )
      ],
    );
  }
}