import 'package:flutter/material.dart';

import 'package:first_app/dice_roller.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 195, 55, 100),
              Color.fromARGB(255, 29, 38, 113),
            ],
          ),
        ),
        child: const Center(
          child: DiceRoller(),
        ),
      ),
    ),
  ));
}
