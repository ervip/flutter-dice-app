import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRoller();
}

class _DiceRoller extends State<DiceRoller> {
  static final _random = Random.secure();
  static int _getRandomNumber() {
    return _random.nextInt(6) + 1;
  }

  int activeDice;

  _DiceRoller() : activeDice = _getRandomNumber();

  void rollDice() {
    setState(() {
      activeDice = _getRandomNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$activeDice.png",
          width: 100,
        ),
        const SizedBox(
          height: 100,
        ),
        TextButton(
          onPressed: rollDice,
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
