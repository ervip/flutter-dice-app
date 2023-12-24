import 'package:flutter/material.dart';

class TextPlate extends StatelessWidget {
  final String outputText;

  const TextPlate(this.outputText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      outputText,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
