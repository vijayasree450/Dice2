import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // var activeDiceImage = 'assets/images/1.png';
  var currentDiceRoll = 1;

  void rollDice() {
    var diceRoll = setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      // activeDiceImage = 'assets/images/3.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/$currentDiceRoll.png', width: 200),
        const SizedBox(height: 80),
        OutlinedButton(
          onPressed: rollDice,
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            backgroundColor: Colors.black87,
            foregroundColor: Colors.white,
          ),
          child: const Text('Roll Dice', style: TextStyle(fontSize: 28)),
        ),
      ],
    );
  }
}
